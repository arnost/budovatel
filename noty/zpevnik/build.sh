#!/bin/sh
# Sestaví zpěvník noty/pdf/Budovatel_zpevnik.pdf a _data/zpevnik.yml (strany písní pro web).
# Potřebuje python3 a Docker (LilyPond 2.24 běží v kontejneru).
set -e
cd "$(dirname "$0")"
REPO=$(cd ../.. && pwd)
python3 build.py
cp iwan2.eps build/
printf 'FROM debian:bookworm-slim\nRUN apt-get update && apt-get install -y --no-install-recommends lilypond\n' \
  | docker build -q -t budovatel-lilypond - >/dev/null
docker run --rm -v "$REPO":/r -w /r/noty/zpevnik/build budovatel-lilypond sh -c '
  lilypond -dno-point-and-click -o /r/noty/zpevnik/build/Budovatel_zpevnik /r/noty/zpevnik/build/zpevnik.ly &&
  gs -q -dBATCH -dNOPAUSE -sDEVICE=txtwrite -sOutputFile=/r/noty/zpevnik/build/strana%03d.txt /r/noty/zpevnik/build/Budovatel_zpevnik.pdf'
mkdir -p "$REPO/_data"
python3 pages.py
cp build/Budovatel_zpevnik.pdf "$REPO/noty/pdf/Budovatel_zpevnik.pdf"
