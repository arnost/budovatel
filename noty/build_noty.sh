#!/bin/sh
# Znovu vygeneruje noty jednotlivých písní na web z noty/lylipond/*.ly:
#   noty/jpg/<píseň>.png (oříznutý obrázek not), noty/pdf, noty/ps a noty/midi.
# MIDI s orchestrálním aranžmá (níže) se nepřepisují.  Potřebuje Docker (LilyPond 2.24).
set -e
cd "$(dirname "$0")"
REPO=$(cd .. && pwd)
ORCHESTR="Hej_slnko_vychodi Hymna_demokraticke_mladeze Kdo_by_vas_vojaci Pochod_rudych_namorniku Se_zpevem_a_smichem"
printf 'FROM debian:bookworm-slim\nRUN apt-get update && apt-get install -y --no-install-recommends lilypond\n' \
  | docker build -q -t budovatel-lilypond - >/dev/null
mkdir -p build
docker run --rm -v "$REPO":/r budovatel-lilypond sh -c '
  for f in /r/noty/lylipond/*.ly; do
    b=$(basename "$f" .ly)
    lilypond -s -dno-point-and-click -dcrop --png -dresolution=110 --pdf --ps \
      -dinclude-settings=/r/noty/bez_paticky.ly -o "/r/noty/build/$b" "$f"
  done'
for f in lylipond/*.ly; do
  b=$(basename "$f" .ly)
  cp "build/$b.cropped.png" "jpg/$b.png"
  rm -f "jpg/$b.gif"
  cp "build/$b.pdf" "pdf/$b.pdf"
  cp "build/$b.ps" "ps/$b.ps"
  case " $ORCHESTR " in *" $b "*) ;; *) [ -f "build/$b.midi" ] && cp "build/$b.midi" "midi/$b.midi" ;; esac
done
echo "Hotovo: $(ls lylipond/*.ly | wc -l | tr -d ' ') písní"
