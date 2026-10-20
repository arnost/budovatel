#!/bin/sh
# Sestaví zpěvník noty/pdf/Budovatel_zpevnik.pdf a _data/zpevnik.yml (strany písní pro web).
# Potřebuje python3 a LilyPond 2.24 (nainstalovaný, nebo spustí Docker).
set -e
cd "$(dirname "$0")"
REPO=$(cd ../.. && pwd)
. ../lilypond.sh
python3 build.py
# zpěvník se sestavuje jen tehdy, když se změnil jeho zdroj (PDF má v sobě datum a náhodné ID)
if [ -f zdroj.sha ] && [ -f "$REPO/noty/pdf/Budovatel_zpevnik.pdf" ] && shasum build/zpevnik.ly | cmp -s - zdroj.sha; then
  echo "Zpěvník je aktuální."; exit 0
fi
cp iwan2.eps build/
lily 'cd "$R/noty/zpevnik/build" &&
  lilypond -dno-point-and-click -o "$R/noty/zpevnik/build/Budovatel_zpevnik" "$R/noty/zpevnik/build/zpevnik.ly" &&
  gs -q -dBATCH -dNOPAUSE -sDEVICE=txtwrite -sOutputFile="$R/noty/zpevnik/build/strana%03d.txt" "$R/noty/zpevnik/build/Budovatel_zpevnik.pdf"'
mkdir -p "$REPO/_data"
python3 pages.py
cp build/Budovatel_zpevnik.pdf "$REPO/noty/pdf/Budovatel_zpevnik.pdf"
shasum build/zpevnik.ly > zdroj.sha
