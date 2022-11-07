#!/usr/bin/env bash
set -e

INPUT_FILENAME="${INPUT_FILENAME:-$1}"
INPUT_FILENAME="${INPUT_FILENAME:-azureupdatesfeed.json}"
INPUT_FILENAME="${GITHUB_WORKSPACE}/data/${INPUT_FILENAME}"
mkdir -p "$(dirname "$INPUT_FILENAME")"
rm -f "$INPUT_FILENAME"
echo "::debug::Location of the converted xml2json file: $INPUT_FILENAME"

INPUT_ROWFILENAME="${INPUT_ROWFILENAME:-$2}"
INPUT_ROWFILENAME="${INPUT_ROWFILENAME:-azureupdatesfeed.xml}"
INPUT_ROWFILENAME="${GITHUB_WORKSPACE}/data/${INPUT_ROWFILENAME}"
mkdir -p "$(dirname "$INPUT_ROWFILENAME")"
rm -f "$INPUT_ROWFILENAME"
echo "::debug::Location of the raw xml2json file: $INPUT_ROWFILENAME"

URL="https://azurecomcdn.azureedge.net/en-us/blog/topics/updates/feed/"
echo "::debug::Feed url: $FEEDURL"

curl --silent "$URL" > "$INPUT_DATAFILERAW"

cat "$INPUT_DATAFILERAW" | xq . > "$INPUT_FILENAME"