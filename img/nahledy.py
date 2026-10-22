#!/usr/bin/env python3
"""Vytvoří náhledy obrázků z galerií: img/galerie/<Galerie>/<soubor> -> img/nahledy/<Galerie>/<soubor>.

Galerie (_layouts/obrazek.html) ukazuje v pásu náhledů tyto malé obrázky a velký obrázek
načítá až při zobrazení. Bez náhledu se použije původní obrázek. Spouští se automaticky
v GitHub Actions (.github/workflows/nahledy.yml), ručně: python3 img/nahledy.py (potřebuje Pillow).
"""
from pathlib import Path

from PIL import Image, ImageFile, ImageOps

ImageFile.LOAD_TRUNCATED_IMAGES = True  # některé staré obrázky jsou na konci useknuté

KOREN = Path(__file__).resolve().parent
GALERIE = KOREN / "galerie"
NAHLEDY = KOREN / "nahledy"
VELIKOST = (240, 240)
PRIPONY = {".jpg", ".jpeg", ".png", ".gif"}

chtene = set()
for zdroj in sorted(GALERIE.rglob("*")):
    if zdroj.suffix.lower() not in PRIPONY:
        continue
    cil = NAHLEDY / zdroj.relative_to(GALERIE)
    chtene.add(cil)
    if cil.exists() and cil.stat().st_mtime >= zdroj.stat().st_mtime:
        continue
    cil.parent.mkdir(parents=True, exist_ok=True)
    with Image.open(zdroj) as obr:
        obr = ImageOps.exif_transpose(obr)
        obr.thumbnail(VELIKOST)
        if zdroj.suffix.lower() in {".jpg", ".jpeg"}:
            obr.convert("RGB").save(cil, "JPEG", quality=80, optimize=True)
        else:
            obr.save(cil)
    print(cil.relative_to(KOREN.parent))

for stary in NAHLEDY.rglob("*"):
    if stary.is_file() and stary not in chtene:
        stary.unlink()
        print("smazáno", stary.relative_to(KOREN.parent))
