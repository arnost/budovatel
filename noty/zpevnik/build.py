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


def stanza_columns(verses):
    """Stanzas in rows of two fixed-width columns (one when lines are long); rows may break across pages."""
    blocks, widest = verses
    if not blocks:
        return ''
    col = lambda b: r"\with-dimension #X #'(0 . 47) " + b
    rows = []
    if widest > 40:
        rows = [r'\line { \hspace #8 ' + b + ' }' for b in blocks]
    else:
        for k in range(0, len(blocks), 2):
            pair = blocks[k:k + 2]
            rows.append(r'\line { ' + ' '.join(col(b) for b in pair) + (' ' + col(r'\null') if len(pair) == 1 else '') + ' }')
    out = [r'\markup { \vspace #1 }']
    out += [r'\markup { \fill-line { ' + r + ' } }' for r in rows]
    return '\n'.join(out)


CZ = 'aábcčdďeéěfghiíjklmnňoópqrřsštťuúůvwxyýzž'
def cz_key(t):
    t = t.lower().replace('ch', 'h\x7f')
    plain = {'á': 'a', 'ď': 'd', 'é': 'e', 'ě': 'e', 'í': 'i', 'ň': 'n', 'ó': 'o', 'ť': 't', 'ú': 'u', 'ů': 'u', 'ý': 'y'}
    prim = ''.join(plain.get(c, c) for c in t)
    order = {c: i for i, c in enumerate('abcčdefghijklmnopqrřsštuvwxyzž')}
    return [order.get(c, 100 + ord(c)) for c in prim], t


def main():
    songs = []
    for f in glob.glob(f'{REPO}/noty/lylipond/*.ly'):
        name = os.path.basename(f)[:-3]
        title, defs, score = convert(name)
        songs.append((title, name, defs, score))
    songs.sort(key=lambda x: cz_key(x[0]))

    manifest = open(os.path.join(HERE, 'predmluva.ly'), encoding='utf-8').read()
    head = open(os.path.join(HERE, 'head.ly'), encoding='utf-8').read().replace('@POCET@', str(len(songs)))
    parts = [head, manifest,
             r'\markuplist \table-of-contents', r'\pageBreak']
    for title, name, defs, score in songs:
        parts.append(f'% ===== {name}')
        parts.append(defs)
        parts.append(r'\tocItem \markup ' + esc(title))
        parts.append(score)
        parts.append(stanza_columns(verses_markup(name)))
        parts.append(r'\pageBreak')
    parts.pop()  # no page break after the last song
    os.makedirs(OUT, exist_ok=True)
    open(os.path.join(OUT, 'zpevnik.ly'), 'w', encoding='utf-8').write('\n\n'.join(parts) + '\n')
    json.dump([[name, title] for title, name, _, _ in songs], open(os.path.join(OUT, 'songs.json'), 'w'), ensure_ascii=False)
    print(len(songs), 'songs')


if __name__ == '__main__':
    main()
