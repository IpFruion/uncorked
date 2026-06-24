#!/bin/bash

set -e
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SOURCE_DIR}/utils.sh"

while IFS="|" read -r science r g b a; do
  science_name=$(basename "$science")
  science_name="${science_name%.*}"

  fluid_file="${ICONS_OUTDIR}/${science_name}-fluid.png"
  output_file="${science_name}-cork.png"

  echo "Positioning $science_name into $output_file"

  magick -size "64x64" xc:none \
    \( "$science" -background none \) \
    -composite \
    \( "$fluid_file" -background none -resize "30x30" \) \
    -geometry "+2+0" -composite \
    "$ICONS_OUTDIR/$output_file"
done < <(science_packs)
