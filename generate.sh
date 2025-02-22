#!/usr/bin/env bash
set -euo pipefail

readonly NAMES=("Ben" "Jess" "Matt")
readonly OUTPUT_DIR="output"

mkdir -p "${OUTPUT_DIR}"

for name in "${NAMES[@]}"; do
    typst compile --input "name=${name}" booklet.typ "${OUTPUT_DIR}/${name}.pdf"
done
