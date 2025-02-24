#!/usr/bin/env bash
set -euo pipefail

readonly NAMES=(
    "Aiden"
    "Alex"
    "Andrew"
    "Ash"
    "Ben"
    "Chris"
    "Danni"
    "Eddie"
    "Ella"
    "Ellen"
    "Hannah"
    "Janelle"
    "Jess"
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

mkdir -p "${OUTPUT_DIR}"

for name in "${NAMES[@]}"; do
    typst compile --input "name=${name}" booklet.typ "${OUTPUT_DIR}/${name}.pdf"
done
