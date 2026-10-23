#!/bin/sh
# Vypíše (jako markdown) písně a básně, jejichž YouTube video už neexistuje nebo nejde vložit.
# Ověřuje se přes oEmbed: smazané, soukromé i nevložitelné video vrací chybu.
cd "$(dirname "$0")/../.."
grep -H '^youtube:' _pisne/* _poezie/* | while IFS=: read -r soubor _ id; do
  id=$(echo "$id" | tr -d ' "')
  [ -z "$id" ] && continue
  kod=$(curl -s -o /dev/null -w '%{http_code}' "https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=$id&format=json")
  [ "$kod" = 200 ] || echo "* \`$soubor\`: video [$id](https://youtu.be/$id) vrací $kod"
  sleep 0.3
done
