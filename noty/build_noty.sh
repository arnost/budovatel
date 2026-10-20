#!/bin/sh
# Znovu vygeneruje noty jednotlivých písní na web z noty/lylipond/*.ly:
#   noty/jpg/<píseň>.png (oříznutý obrázek not), noty/pdf, noty/ps a noty/midi.
# MIDI s orchestrálním aranžmá (níže) se nepřepisují.  Potřebuje LilyPond 2.24 (nainstalovaný, nebo Docker).
set -e
cd "$(dirname "$0")"
REPO=$(cd .. && pwd)
ORCHESTR="Hej_slnko_vychodi Hymna_demokraticke_mladeze Kdo_by_vas_vojaci Pochod_rudych_namorniku Se_zpevem_a_smichem"
. ./lilypond.sh
mkdir -p build
lily 'for f in "$R"/noty/lylipond/*.ly; do
    b=$(basename "$f" .ly)
    lilypond -s -dno-point-and-click -dcrop --png -dresolution=110 --pdf --ps \
      -dinclude-settings="$R/noty/bez_paticky.ly" -o "$R/noty/build/$b" "$f"
  done'
for f in lylipond/*.ly; do
  b=$(basename "$f" .ly)
  # PDF a PS obsahují datum a náhodné ID, proto se kopírují jen u písní, jejichž noty se změnily
  if ! cmp -s "build/$b.cropped.png" "jpg/$b.png" || [ ! -f "pdf/$b.pdf" ] || [ ! -f "ps/$b.ps" ]; then
    cp "build/$b.cropped.png" "jpg/$b.png"
    cp "build/$b.pdf" "pdf/$b.pdf"
    cp "build/$b.ps" "ps/$b.ps"
  fi
  rm -f "jpg/$b.gif"
  case " $ORCHESTR " in *" $b "*) ;; *) [ -f "build/$b.midi" ] && cp "build/$b.midi" "midi/$b.midi" ;; esac
done
echo "Hotovo: $(ls lylipond/*.ly | wc -l | tr -d ' ') písní"
