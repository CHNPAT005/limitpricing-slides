#!/usr/bin/env bash
# Convert paper figures (PDF) into the shared figures/ folder as web-ready PNGs.
# All decks reference these via ../figures/<name>.png, so a figure is pulled once
# and every talk (short, long, ...) can use it.
#
# Usage:  ./pull-figures.sh <figure.pdf> [more.pdf ...]
#   e.g.  ./pull-figures.sh LPExample.pdf FreeComp.pdf
#
# Each PDF is searched for (in order) under the sibling project folders:
#   ../Paper/figures  ../Paper  ../Code/Figures
# so once Overleaf is synced into ../Paper, its figures are picked up too.

set -euo pipefail
[ "$#" -ge 1 ] || { echo "usage: pull-figures.sh <figure.pdf> ..."; exit 1; }
export PATH="/opt/homebrew/bin:$PATH"

OUT="figures"; mkdir -p "$OUT"
SEARCH=("../Paper/figures" "../Paper" "../Code/Figures")

for pdf in "$@"; do
  src=""
  for d in "${SEARCH[@]}"; do [ -f "$d/$pdf" ] && { src="$d/$pdf"; break; }; done
  if [ -z "$src" ]; then echo "!! not found: $pdf (looked in ${SEARCH[*]})"; continue; fi
  # slugify: LPExample.pdf -> lpexample.png
  name="$(basename "${pdf%.pdf}" | tr '[:upper:]' '[:lower:]').png"
  magick -density 200 "$src" -background white -flatten -trim +repage "$OUT/$name"
  echo "converted  $src  ->  $OUT/$name"
done
