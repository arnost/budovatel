#!/usr/bin/env python3
"""Vytáhne z MIDI souborů písní melodii a uloží ji do napevy.json pro hledání podle nápěvu (hledat-napev.html).

Pro každou píseň s MIDI souborem v noty/midi/ uloží název, adresu a melodii jako dvě řady čísel:
výšky tónů (MIDI čísla) a délky v šestnáctinách. Melodie se bere ze stopy hlasu (LilyPond ji
pojmenovává „…:one“ apod., orchestrální MIDI mají stopu „mel“), u souborů bez takové stopy z nejvyšších
tónů ostatních stop.
Repetice jsou v MIDI rozvinuté, takže stačí brát tóny po řadě. Spouštět z kořene repozitáře.
"""
import glob, json, os, re, struct

MAX_TONU = 400


def precti_midi(cesta):
    d = open(cesta, 'rb').read()
    if d[:4] != b'MThd':
        return None, []
    _, pocet, div = struct.unpack('>HHH', d[8:14])
    pos, stopy = 14, []
    for _ in range(pocet):
        if d[pos:pos + 4] != b'MTrk':
            break
        delka = struct.unpack('>I', d[pos + 4:pos + 8])[0]
        tr, pos = d[pos + 8:pos + 8 + delka], pos + 8 + delka
        i = tick = 0
        run, jmeno, noty, zapnute = None, '', [], {}

        def vl():
            nonlocal i
            v = 0
            while True:
                b = tr[i]
                i += 1
                v = (v << 7) | (b & 0x7f)
                if b < 0x80:
                    return v

        while i < len(tr):
            tick += vl()
            st = tr[i]
            if st == 0xff:
                typ = tr[i + 1]
                i += 2
                l = vl()
                if typ == 3:
                    jmeno = tr[i:i + l].decode('utf-8', 'replace')
                i += l
                continue
            if st in (0xf0, 0xf7):
                i += 1
                i += vl()
                continue
            if st & 0x80:
                run = st
                i += 1
            hi = run & 0xf0
            if hi in (0xc0, 0xd0):
                i += 1
                continue
            a, b = tr[i], tr[i + 1]
            i += 2
            if hi == 0x90 and b > 0:
                zapnute[a] = tick
            elif hi == 0x80 or (hi == 0x90 and b == 0):
                if a in zapnute:
                    noty.append((zapnute.pop(a), tick, a))
        stopy.append((jmeno, sorted(noty)))
    return div, stopy


def melodie(div, stopy):
    hlasy = [n for j, n in stopy if (':' in j or j == 'mel' or j.startswith('Zp')) and n]
    if hlasy:
        noty = max(hlasy, key=len)
    else:
        noty = sorted(x for _, n in stopy for x in n)
    # při více tónech naráz vezme nejvyšší, překrývající se tóny zkrátí
    podle_zacatku = {}
    for z, k, v in noty:
        if z not in podle_zacatku or v > podle_zacatku[z][1]:
            podle_zacatku[z] = (k, v)
    zacatky = sorted(podle_zacatku)
    vysky, delky = [], []
    for n, z in enumerate(zacatky):
        k, v = podle_zacatku[z]
        dalsi = zacatky[n + 1] if n + 1 < len(zacatky) else k
        trvani = max(dalsi - z, 1)
        vysky.append(v)
        delky.append(max(1, round(trvani * 4 / div)))
    return vysky[:MAX_TONU], delky[:MAX_TONU]


def front_matter(cesta):
    s = open(cesta, encoding='utf-8').read()
    m = re.match(r'---\n(.*?)\n---', s, re.S)
    return m.group(1) if m else ''


def main():
    vystup = []
    for midi in sorted(glob.glob('noty/midi/*.midi')):
        jmeno = os.path.splitext(os.path.basename(midi))[0]
        stranky = glob.glob(f'_pisne/{jmeno}.md')
        if not stranky:
            continue
        fm = front_matter(stranky[0])
        t = re.search(r'(?m)^title:\s*"?(.*?)"?\s*$', fm)
        div, stopy = precti_midi(midi)
        if not div:
            continue
        v, d = melodie(div, stopy)
        hlas = any((':' in j or j == 'mel' or j.startswith('Zp')) and n for j, n in stopy)
        if len(v) < 4:
            continue
        vystup.append({'t': t.group(1) if t else jmeno, 'u': f'/pisen.phtml/{jmeno.lower()}', 'v': v, 'd': d, 'hlas': hlas})
    with open('napevy.json', 'w', encoding='utf-8') as f:
        json.dump([{k: p[k] for k in 'tuvd'} for p in vystup], f, ensure_ascii=False, separators=(',', ':'))
    print(f'napevy.json: {len(vystup)} písní')
    stejny_napev(vystup)
    analyza(vystup)


def podobnost(q, s):
    """Jak dobře se úsek q (intervaly) vejde kamkoli do s: 1 = přesně, půltónová odchylka stojí půl chyby."""
    n, prev, nej = len(q), list(range(len(q) + 1)), float('inf')
    for b in s:
        cur = [0] * (n + 1)
        for j in range(1, n + 1):
            a = q[j - 1]
            c = 0 if a == b else (0.5 if abs(a - b) == 1 else 1)
            cur[j] = min(prev[j - 1] + c, prev[j] + 1, cur[j - 1] + 1)
        nej, prev = min(nej, cur[n]), cur
    return 1 - nej / n


def stejny_napev(pisne):
    """Najde dvojice písní se stejným nápěvem (prvních 32 intervalů jedné se s malými odchylkami
    najde ve druhé) a zapíše je do _data/stejny_napev.yml pro odkazy na stránkách písní."""
    iv = [[p['v'][i] - p['v'][i - 1] for i in range(1, len(p['v']))] for p in pisne]
    jm = [p['u'].rsplit('/', 1)[1] for p in pisne]
    pary = {}
    for i in range(len(pisne)):
        q = iv[i][:14]
        if len(q) < 14 or len(set(q)) < 3:
            continue
        for j in range(len(pisne)):
            if i != j and podobnost(q, iv[j][:60]) >= 0.85 and podobnost(iv[i][:32], iv[j]) >= 0.8:
                pary.setdefault(jm[i], set()).add(jm[j])
                pary.setdefault(jm[j], set()).add(jm[i])
    with open('_data/stejny_napev.yml', 'w', encoding='utf-8') as f:
        f.write('# Generuje noty/napevy.py: písně, které se zpívají na stejný nápěv (podle MIDI).\n')
        for k in sorted(pary):
            f.write(f'{k}: [{", ".join(sorted(pary[k]))}]\n')
    print(f'_data/stejny_napev.yml: {len(pary)} písní')


JMENA = ['c', 'cis', 'd', 'es', 'e', 'f', 'fis', 'g', 'as', 'a', 'b', 'h']
JMENA_KRIZKY = ['c', 'cis', 'd', 'dis', 'e', 'f', 'fis', 'g', 'gis', 'a', 'ais', 'h']
KRIZKOVE = {'G dur', 'D dur', 'A dur', 'E dur', 'H dur', 'Fis dur', 'e moll', 'h moll', 'fis moll', 'cis moll', 'gis moll'}
INTERVALY = ['prima', 'malá sekunda', 'velká sekunda', 'malá tercie', 'velká tercie', 'kvarta', 'tritón',
             'kvinta', 'malá sexta', 'velká sexta', 'malá septima', 'velká septima', 'oktáva']
# lilypondí (holandská) jména tónů -> česká
LY_TONY = {'c': 'c', 'cis': 'cis', 'des': 'des', 'd': 'd', 'dis': 'dis', 'es': 'es', 'ees': 'es', 'e': 'e', 'f': 'f',
           'fis': 'fis', 'ges': 'ges', 'g': 'g', 'gis': 'gis', 'as': 'as', 'aes': 'as', 'a': 'a', 'ais': 'ais',
           'bes': 'b', 'b': 'h', 'ces': 'ces'}


def jmeno_tonu(m, krizky=False):
    """MIDI číslo -> české jméno s oktávou (c' = 60)."""
    o = m // 12 - 4
    n = (JMENA_KRIZKY if krizky else JMENA)[m % 12]
    if o < 0:
        return n.upper() if o == -1 else n
    return n + "'" * o


def nazev_intervalu(p):
    if p <= 12:
        return INTERVALY[p]
    if p == 24:
        return 'dvě oktávy'
    return 'oktáva a ' + INTERVALY[p - 12] if p < 24 else f'{p} půltónů'


def analyza(pisne):
    """Takt, tónina a rozsah melodie každé písně do _data/analyza.yml (zobrazuje se u písně)."""
    radky = ['# Generuje noty/napevy.py: takt a tónina z .ly, rozsah melodie z MIDI.']
    for p in pisne:
        jm = p['u'].rsplit('/', 1)[1]
        ly = [f for f in glob.glob('noty/lylipond/*.ly') if os.path.basename(f)[:-3].lower() == jm]
        takt = tonina = ''
        if ly:
            t = open(ly[0], encoding='utf-8').read()
            m = re.search(r'\\time\s+(\d+/\d+)', t)
            takt = m.group(1) if m else ''
            m = re.search(r'\\key\s+([a-z]+)\s*\\(major|minor)', t)
            if m and m.group(1) in LY_TONY:
                ton = LY_TONY[m.group(1)]
                tonina = (ton.capitalize() + ' dur') if m.group(2) == 'major' else (ton + ' moll')
        if not p['hlas']:
            # melodie poskládaná z nejvyšších tónů doprovodu: rozsah by neodpovídal zpěvu
            radky.append(f'{jm}: {{takt: "{takt}", tonina: "{tonina}"}}')
            continue
        lo, hi = min(p['v']), max(p['v'])
        radky.append(f'{jm}: {{takt: "{takt}", tonina: "{tonina}", od: "{jmeno_tonu(lo, tonina in KRIZKOVE)}", do: "{jmeno_tonu(hi, tonina in KRIZKOVE)}", '
                     f'rozsah: "{nazev_intervalu(hi - lo)}", pultony: {hi - lo}, prvni: {p["v"][1] - p["v"][0]}}}')
    with open('_data/analyza.yml', 'w', encoding='utf-8') as f:
        f.write('\n'.join(radky) + '\n')
    print(f'_data/analyza.yml: {len(radky) - 1} písní')


if __name__ == '__main__':
    main()
