#!/bin/bash

set -e
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SOURCE_DIR"/all.sh

OUT_DIR="$SOURCE_DIR/output"

if [ -z $OUT_DIR ]; then
  rm -r "$OUT_DIR"
fi
mkdir -p "$OUT_DIR"

cd "$SOURCE_DIR/../"

zip -r -X "$OUT_DIR/uncorked.zip" \
  "graphics/" \
  "locale/" \
  "prototypes/" \
  "LICENSE" \
  "README.md" \
  "data.lua" \
  "info.json" \
  "thumbnail.png" \
