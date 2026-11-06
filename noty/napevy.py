#!/usr/bin/env python3
"""Vytáhne z MIDI souborů písní melodii a uloží ji do napevy.json pro hledání podle nápěvu (hledat-napev.html).

Pro každou píseň s MIDI souborem v noty/midi/ uloží název, adresu a melodii jako dvě řady čísel:
výšky tónů (MIDI čísla) a délky v šestnáctinách. Melodie se bere ze stopy hlasu (LilyPond ji
pojmenovává „…:one“ apod.), u souborů bez pojmenované stopy z nejvyšších tónů ostatních stop.
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
    hlasy = [n for j, n in stopy if ':' in j and n]
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
        if len(v) < 4:
            continue
        vystup.append({'t': t.group(1) if t else jmeno, 'u': f'/pisen.phtml/{jmeno.lower()}', 'v': v, 'd': d})
    with open('napevy.json', 'w', encoding='utf-8') as f:
        json.dump(vystup, f, ensure_ascii=False, separators=(',', ':'))
    print(f'napevy.json: {len(vystup)} písní')


if __name__ == '__main__':
    main()
