#!/usr/bin/env bash
set -euo pipefail

readonly NAMES=(
    "Alex"
    "Andrew"
    "Ash"
    "Ben"
    "Chris"
    "Cole"
    "Danni"
    "Eddie"
    "Ella"
    "Ellen"
    "Hannah"
    "Janelle"
    "Jess"
    "Jessamy"
    "Josh"
    "Katherine"
    "Lewis"
    "Mai"
    "Matt"
    "Paul"
    "Safiya"
    "Sarah"
    "Sharon"
    "Sherice"
    "Sungyeon"
    "Tom"
    "Vivienne"
)
readonly OUTPUT_DIR="output"

rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"

for name in "${NAMES[@]}"; do
    typst compile --input "name=${name}" booklet.typ "${OUTPUT_DIR}/${name}.pdf"
done

pdfjam --nup 2x1 --landscape "${OUTPUT_DIR}"/*.pdf --outfile output.pdf
