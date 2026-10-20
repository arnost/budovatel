"""Find the PDF page of every song (from gs txtwrite output) and write _data/zpevnik.yml for the website."""
import glob, json, os, re

from verses import REPO

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, 'build')


def squash(t):
    return re.sub(r'\s+', '', t).lower()


songs = json.load(open(os.path.join(OUT, 'songs.json')))
pages = [squash(open(p, encoding='utf-8', errors='replace').read()) for p in sorted(glob.glob(os.path.join(OUT, 'strana*.txt')))]
# a song with notes starts on the first page (after the contents) whose top line is its title;
# lyrics-only songs share pages, so for them the title just has to appear on the page
found = {}
page = max(i for i, t in enumerate(pages) if 'obsah' in t[:40] or i == 0) + 1
for chapter, starts in (('noty', True), ('texty', False)):
    for name, title in songs[chapter]:
        key = squash(title)
        while page < len(pages) and not (pages[page].startswith(key) if starts else key in pages[page]):
            page += 1
        if page == len(pages):
            raise SystemExit(f'Píseň {title} jsem v PDF nenašel')
        found[name] = page + 1
with open(os.path.join(REPO, '_data', 'zpevnik.yml'), 'w', encoding='utf-8') as f:
    f.write('# Generuje noty/zpevnik/build.sh: strana PDF zpěvníku, na které začíná píseň\n')
    for name in sorted(found):
        f.write(f'{name}: {found[name]}\n')
print(len(found), 'písní, poslední na straně', max(found.values()))
