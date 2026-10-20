# Společná část skriptů noty/build_noty.sh a noty/zpevnik/build.sh (načítá se přes „.“).
# Spustí příkaz s LilyPondem 2.24: buď nainstalovaným (např. na GitHubu), nebo v Dockeru se stejným Ubuntu jako GitHub,
# aby obrázky not vycházely bajtově stejně a commitovaly se jen skutečné změny.
# V příkazu se kořen repozitáře píše jako $R.
lily() {
  if command -v lilypond >/dev/null 2>&1 && lilypond --version | head -1 | grep -q ' 2\.24'; then
    R="$REPO" SOURCE_DATE_EPOCH=0 sh -c "$1"
  else
    printf 'FROM ubuntu:24.04\nRUN apt-get update && apt-get install -y --no-install-recommends lilypond\n' \
      | docker build -q -t budovatel-lilypond - >/dev/null
    docker run --rm -e R=/r -e SOURCE_DATE_EPOCH=0 -v "$REPO":/r budovatel-lilypond sh -c "$1"
  fi
}
