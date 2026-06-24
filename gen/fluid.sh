#!/bin/bash

set -e
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SOURCE_DIR}/utils.sh"

while IFS="|" read -r science r g b a; do
  base=$(basename "$science")
  filename="${base%.*}-fluid.png"
  target_color="rgb($r,$g,$b)"

  echo "Found $base and creating $filename with color $target_color"
  magick "${IMAGES_DIR}/water.png" -normalize \
    \( -clone 0 -fill "$target_color" -colorize 100% \) \
    -compose Colorize -composite -modulate 85,100,100 \
    "$ICONS_OUTDIR/$filename"
done < <(science_packs)
