#!/bin/bash

set -e
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SOURCE_DIR"/fluid.sh
"$SOURCE_DIR"/uncork.sh
"$SOURCE_DIR"/cork.sh
"$SOURCE_DIR"/color-data.sh
