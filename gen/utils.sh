SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGES_DIR="$SOURCE_DIR/images"
ICONS_OUTDIR="${SOURCE_DIR}/../graphics/icons/"

mkdir -p $ICONS_OUTDIR

function science_packs() {
  for science in "$IMAGES_DIR"/*-science-*.png; do
    # target_color=$(magick "$science" -crop 3x3+42+45 -scale 1x1\! -format "%[pixel:p{0,0}]" info:)
    science_color=$(magick "$science[3x3+39+40]" -scale 1x1\! -format "%[fx:int(255*r)]|%[fx:int(255*g)]|%[fx:int(255*b)]|%[fx:int(255*a)]" info:)

    echo "${science}|${science_color}"
  done
}
