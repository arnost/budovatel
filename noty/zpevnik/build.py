"""Generate zpevnik.ly: title page, foreword, contents and all songs with extra verses."""
import re, glob, os, json, unicodedata
from verses import REPO, song

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, 'build')
THRESHOLD = 0.75  # stanzas covered by the score lyrics at least this much are not repeated


def block_end(s, start):
    """Index just past the brace block that opens at or after `start`."""
    i = s.index('{', start)
    depth = 0
    while True:
        c = s[i]
        if c == '{': depth += 1
        elif c == '}':
            depth -= 1
            if depth == 0: return i + 1
        elif c == '%':
            i = s.index('\n', i)
        elif c == '"':
            i += 1
            while s[i] != '"':
                i += 2 if s[i] == '\\' else 1
        i += 1


def esc(t):
    return '"' + t.replace('\\', '\\\\').replace('"', '\\"') + '"'


def header_field(h, key):
    m = re.search(key + r'\s*=\s*"([^"]*)"', h)
    return m.group(1).strip() if m else ''


def convert(name):
    s = open(f'{REPO}/noty/lylipond/{name}.ly', encoding='utf-8').read()
    s = re.sub(r'\\version\s*"[^"]*"', '', s)
    s = s.replace('#(set-global-staff-size 16)', '')
    hpos = s.index('\\header')
    hend = block_end(s, hpos)
    header = s[hpos:hend]
    s = s[:hpos] + s[hend:]
    title = header_field(header, 'title') or name.replace('_', ' ')
    if not header_field(header, 'title'):
        header = re.sub(r'title\s*=\s*"[^"]*"', f'title = {esc(title)}', header)
    for k in ('composer', 'poet'):  # "???" is not worth printing
        if header_field(header, k) in ('???', '?'):
            header = re.sub(k + r'\s*=\s*"[^"]*"', f'{k} = ""', header)
    spos = s.index('\\score')
    send = block_end(s, spos)
    score = s[spos:send]
    m = re.search(r'\\midi', score)
    if m:
        mend = block_end(score, m.start())
        score = score[:m.start()] + score[mend:]
    score = re.sub(r'line-width\s*=\s*[\d.]+\\cm', '', score)
    score = score[:-1] + '\n  ' + header + '\n}'
    defs = s[:spos] + s[send:]
    return title, defs.strip(), score


REFRAIN = re.compile(r'\W*(refr|ref\b|refrain|pripev)', re.I)


def verses_markup(name):
    """Return (blocks, widest line) for the stanzas that are not already under the notes."""
    items = song(name)
    numbered = any(it['kind'] == 'stanza' and it['label'] and re.search(r'\d|sloka', it['label'], re.I) for it in items)
    blocks, num, last = [], 0, None
    ordinals = {'první': 1, 'druhá': 2, 'třetí': 3, 'čtvrtá': 4, 'pátá': 5, 'šestá': 6}
    prev = None  # 'verse' when the previous page item was (part of) a verse
    first = True
    for it in items:
        if it['kind'] == 'marker':
            if last is not None and REFRAIN.match(it['lines'][0] or ''):
                last['lines'].append(None)  # "Ref." reminder after the stanza
            prev = 'marker'
            continue
        if it['kind'] == 'note':
            blocks.append({'tag': None, 'note': it['lines'][0], 'lines': []}); last = None; continue
        label = (it['label'] or '').strip()
        ordinal = next((n for w, n in ordinals.items() if label.lower().startswith(w) and 'slok' in label.lower()), None)
        if REFRAIN.match(label) or (not label and numbered and it['cover'] >= 0.5 and not first):
            tag, prev = 'Ref.', 'refrain'
        elif not label and numbered and prev == 'verse':
            tag = ''  # continuation of the previous verse
        elif ordinal or re.search(r'\d|^sloka', label, re.I) or not label:
            num += 1
            m = re.search(r'\d+', label)
            tag = f'{ordinal or (m.group(0) if m else num)}.'
            prev = 'verse'
        else:
            tag, prev = label.rstrip(':').strip(), 'other'
        first = False
        if it['cover'] >= THRESHOLD:
            last = None
            continue
        if tag == '' and last is not None:
            last['lines'] += [''] + list(it['lines'])  # continuation stays with its verse
            continue
        last = {'tag': tag, 'lines': list(it['lines'])}
        blocks.append(last)
    widest = max([len(l) for b in blocks for l in b['lines'] if l] + [0])
    out = []
    for b in blocks:
        if b.get('note'):
            out.append(r'\italic ' + esc(b['note'])); continue
        lines = ' '.join(r'\italic "Ref."' if l is None else r'\vspace #0.4' if l == '' else r'\line { ' + esc(l) + ' }' for l in b['lines'])
        tag = b['tag']
        if tag == '':
            out.append(r'\line { \hspace #2.2 \column { ' + lines + ' } }')
        elif re.fullmatch(r'\d+\.', tag):
            out.append(r'\line { \bold ' + esc(tag) + r' \hspace #1 \column { ' + lines + ' } }')
        else:
            out.append(r'\column { \italic ' + esc(tag + ':') + ' ' + lines + ' }')
    return out, widest


def stanza_rows(verses):
    """Stanzas as rows of two fixed-width columns (one when lines are long); rows may break across pages."""
    blocks, widest = verses
    box = lambda b, w: r"\with-dimension #X #'(0 . " + str(w) + ') ' + b
    if widest > 40:
        rows = [box(b, 90) for b in blocks]
    else:
        rows = []
        for k in range(0, len(blocks), 2):
            pair = blocks[k:k + 2] + ([r'\null'] if len(blocks[k:k + 2]) == 1 else [])
            rows.append(' '.join(box(b, 47) for b in pair))
    return [r'\markup { \fill-line { \line { ' + r + ' } } }' for r in rows]


def stanza_columns(verses):
    rows = stanza_rows(verses)
    return '\n'.join([r'\markup { \vspace #1 }'] + rows) if rows else ''


CZ = 'aábcčdďeéěfghiíjklmnňoópqrřsštťuúůvwxyýzž'
def cz_key(t):
    t = t.lower().replace('ch', 'h\x7f')
    plain = {'á': 'a', 'ď': 'd', 'é': 'e', 'ě': 'e', 'í': 'i', 'ň': 'n', 'ó': 'o', 'ť': 't', 'ú': 'u', 'ů': 'u', 'ý': 'y'}
    prim = ''.join(plain.get(c, c) for c in t)
    order = {c: i for i, c in enumerate('abcčdefghijklmnopqrřsštuvwxyzž')}
    return [order.get(c, 100 + ord(c)) for c in prim], t


def front_matter(path):
    """Simple reader for the song front matter (title, music, text, preklad; preklad may be a list)."""
    fm = re.match(r'---\n(.*?)\n---', open(path, encoding='utf-8').read(), re.S).group(1)
    data, key = {}, None
    for line in fm.split('\n'):
        m = re.match(r'(\w+):\s*(.*)', line)
        if m:
            key, val = m.groups()
            data[key] = val.strip() if val.strip() else []
        elif key and re.match(r'\s*-\s+', line):
            data[key].append(re.sub(r'\s*-\s+', '', line).strip())
    return data


def lyrics_only():
    """Songs on the website that have no LilyPond notes: (title, name, authors line)."""
    out = []
    for f in glob.glob(f'{REPO}/_pisne/*'):
        name = os.path.basename(f).rsplit('.', 1)[0]
        if os.path.exists(f'{REPO}/noty/lylipond/{name}.ly'):
            continue
        blocks = verses_markup(name)
        if not blocks[0]:
            continue  # no lyrics on the page (e.g. an instrumental theme)
        fm = front_matter(f)
        who = []
        for key, label in (('music', 'hudba'), ('text', 'text'), ('preklad', 'překlad')):
            v = fm.get(key)
            if v:
                who.append(f'{label}: ' + (', '.join(v) if isinstance(v, list) else v))
        out.append((fm.get('title') or name.replace('_', ' '), name, ', '.join(who), blocks))
    out.sort(key=lambda x: cz_key(x[0]))
    return out


def main():
    songs = []
    for f in glob.glob(f'{REPO}/noty/lylipond/*.ly'):
        name = os.path.basename(f)[:-3]
        title, defs, score = convert(name)
        songs.append((title, name, defs, score))
    songs.sort(key=lambda x: cz_key(x[0]))
    texts = lyrics_only()

    manifest = open(os.path.join(HERE, 'predmluva.ly'), encoding='utf-8').read()
    head = open(os.path.join(HERE, 'head.ly'), encoding='utf-8').read()
    head = head.replace('@POCET@', str(len(songs))).replace('@BEZNOT@', str(len(texts)))
    parts = [head, manifest,
             r'\markuplist \table-of-contents', r'\pageBreak']
    for title, name, defs, score in songs:
        parts.append(f'% ===== {name}')
        parts.append(defs)
        parts.append(r'\tocItem \markup ' + esc(title))
        parts.append(score)
        parts.append(stanza_columns(verses_markup(name)))
        parts.append(r'\pageBreak')
    # second chapter: songs that have only lyrics, several to a page
    parts.append(r'\tocItem \markup \bold "Písně bez not"')
    parts.append(r'\markup \fill-line { \center-column { \vspace #2 \fontsize #6 \bold "Písně bez not" \vspace #1 '
                 r'\italic "Písně, ke kterým zatím nemáme noty – jen texty." \vspace #1 } }')
    for title, name, who, blocks in texts:
        parts.append(f'% ===== {name}')
        parts.append(r'\tocItem \markup ' + esc(title))
        head = r'\fill-line { \fontsize #3 \bold ' + esc(title) + ' }'
        if who:
            head += r' \fill-line { \italic ' + esc(who) + ' }'
        parts.append(r'\markup \column { \vspace #2.5 ' + head + r' \vspace #0.5 }')
        rows = stanza_rows(blocks)
        parts.append(r'\noPageBreak')
        parts.append(rows[0])  # the title never stays alone at the bottom of a page
        parts.extend(rows[1:])
    os.makedirs(OUT, exist_ok=True)
    open(os.path.join(OUT, 'zpevnik.ly'), 'w', encoding='utf-8').write('\n\n'.join(parts) + '\n')
    json.dump({'noty': [[name, title] for title, name, _, _ in songs],
               'texty': [[name, title] for title, name, _, _ in texts]},
              open(os.path.join(OUT, 'songs.json'), 'w'), ensure_ascii=False)
    print(len(songs), 'písní s notami,', len(texts), 'bez not')


if __name__ == '__main__':
    main()
