#!/usr/bin/env bash
set -euo pipefail

readonly NAMES=(
    "Andrew"
    "Aiden"
    "Alex"
    "Ash"
    "Ben"
    "Danni"
    "Eddie"
    "Ella"
    "Ellen"
    "Chris"
    "Hannah"
    "Mai"
    "Matt"
    "Jess"
    "Josh"
    "Janelle"
    "Katherine"
    "Paul"
    "Safiya"
    "Sarah"
    "Sharon"
    "Sherice"
    "Sungyeon"
    "Thomas"
    "Vivienne"
    "Lewis"
)
readonly OUTPUT_DIR="output"

mkdir -p "${OUTPUT_DIR}"

for name in "${NAMES[@]}"; do
    typst compile --input "name=${name}" booklet.typ "${OUTPUT_DIR}/${name}.pdf"
done
