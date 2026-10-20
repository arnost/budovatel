"""Extract song stanzas from the website pages and drop those already in the score."""
import re, html, glob, os, unicodedata

REPO = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..'))

def norm_words(s):
    s = unicodedata.normalize('NFC', s.lower())
    return re.findall(r'[^\W\d_]+', s)

def score_words(ly):
    words = []
    for m in re.finditer(r'\\lyricmode\s*\{', ly):
        depth, i = 1, m.end()
        while depth and i < len(ly):
            depth += {'{': 1, '}': -1}.get(ly[i], 0); i += 1
        body = ly[m.end():i-1]
        body = re.sub(r'\\set\s+\S+\s*=\s*"[^"]*"', ' ', body)
        body = re.sub(r'%.*', ' ', body)
        body = re.sub(r'\s--\s', '', body).replace('~', ' ').replace('_', ' ')
        words += norm_words(body)
    return words

def page_text(path):
    s = open(path, encoding='utf-8').read()
    s = re.sub(r'^---.*?\n---\s*\n', '', s, flags=re.S)
    if path.endswith('.html'):
        s = re.sub(r'(?i)[ \t]*\n[ \t]*(<br\s*/?>)', r'\1', s)  # "verse\n<br>next" is one line break
        s = re.sub(r'(?i)<br\s*/?>[ \t]*\n?', '\n', s)
        s = re.sub(r'(?i)</?p[^>]*>', '\n\n', s)
        s = re.sub(r'(?i)<(i|em)>(.*?)</\1>', r'*\2*', s, flags=re.S)
        s = re.sub(r'<[^>]+>', '', s)
        s = html.unescape(s)
    return s

MARKER = re.compile(r'^\W*(\d+\.\s*sloka|sloka\s*\d*|refr[eé]n|ref\.?|r\.?|refrain|pripev|припев|\w+ opakování|sbor|slova)\W*$', re.I)
LABEL = re.compile(r'^\W*(\d+\.|sloka\s*\d+\s*:|refr[eé]n\s*:|refrain\s*:|ref\.\s*:?)\s*', re.I)

def stanzas(text):
    blocks, cur = [], []
    for line in text.split('\n'):
        line = line.rstrip()
        if line.strip() == '':
            if cur: blocks.append(cur); cur = []
        else:
            cur.append(line.strip())
    if cur: blocks.append(cur)
    out = []
    for b in blocks:
        joined = ' '.join(b)
        prose = any(len(l) > 95 for l in b) or re.search(r'[\u0400-\u04ff]', joined) \
            or re.search(r'\]\(|https?://', joined)
        if prose or (len(b) == 1 and (re.search(r'\btext\b', b[0], re.I) or re.fullmatch(r'\*\*.+\*\*:?', b[0]))):
            break  # lyrics end where commentary / original-language text starts
        if re.fullmatch(r'\*[^*].*[^*]\*', joined) and not MARKER.match(b[0]):
            continue  # italic subtitle or note like *Revoluční tradicionál*
        out.append(b)
    return out

def clean_line(l):
    l = re.sub(r'\*+', '', l)
    l = re.sub(r'\s+', ' ', l).strip()
    return l

def song(name):
    ly_path = f'{REPO}/noty/lylipond/{name}.ly'
    ly = open(ly_path, encoding='utf-8').read() if os.path.exists(ly_path) else ''
    page = (glob.glob(f'{REPO}/_pisne/{name}.md') + glob.glob(f'{REPO}/_pisne/{name}.html'))[0]
    sw = set(score_words(ly))
    result = []
    seen_first = False
    for b in stanzas(page_text(page)):
        bold = re.fullmatch(r'\*\*(.+?)\*\*', b[0])
        if bold and len(b) > 1 and not re.fullmatch(r'\d+\.', bold.group(1)):
            b = [bold.group(1) + ':'] + b[1:]  # bold heading (song name) becomes the stanza label
        lines = [clean_line(l) for l in b]
        lines = [l for l in lines if l]
        if not lines: continue
        label = None
        while lines and (MARKER.match(lines[0]) or (lines[0].endswith(':') and len(lines[0].split()) <= 4 and len(lines) > 1)):
            label = lines.pop(0)
        if lines:
            m = LABEL.match(lines[0])
            if m:
                label = m.group(1); lines[0] = lines[0][m.end():].strip()
                if not lines[0]: lines = lines[1:]
        if label and re.match(r'\W*(1\.|sloka\s*1\b|1\.\s*sloka)', label, re.I):
            if seen_first: break  # another language version starts over
            seen_first = True
        if not lines:
            result.append({'kind': 'marker', 'lines': [label]}); continue
        if len(lines) == 1 and re.fullmatch(r'\(.*\)', lines[0]):
            result.append({'kind': 'note', 'lines': lines}); continue
        words = norm_words(' '.join(lines))
        cover = sum(w in sw for w in words) / max(1, len(words))
        result.append({'kind': 'stanza', 'label': label, 'lines': lines, 'cover': round(cover, 2)})
    return result

if __name__ == '__main__':
    # vypíše sloky každé písně s mírou pokrytí textem pod notami (pro kontrolu)
    for f in sorted(glob.glob(f'{REPO}/noty/lylipond/*.ly')):
        n = os.path.basename(f)[:-3]
        print(f'### {n}')
        for s in song(n):
            if s['kind'] != 'stanza': print(f"   [{s['kind']}]", s['lines'][0]); continue
            print(f"   [{s['cover']:.2f}] {s['label'] or ''} | " + ' / '.join(s['lines']))
