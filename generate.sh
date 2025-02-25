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

total=${#NAMES[@]}
count=0
for name in "${NAMES[@]}"; do
    count=$((count + 1))
    echo -ne "Processing: ${count}/${total} (${name})...\r"
    typst compile --input "name=${name}" booklet.typ "${OUTPUT_DIR}/${name}.pdf"
done
echo -e "\nAll booklets created, producing output.pdf..."

pdfjam --nup 2x1 --landscape "${OUTPUT_DIR}"/*.pdf --outfile output.pdf
