#!/usr/bin/env bash
# Render one PDF page of the book to a small grayscale PNG and print its path.
# Usage: scripts/page.sh <pdf-page-number>
set -euo pipefail
BOOK="${ARANJIYYAH_BOOK:-$(dirname "$0")/../book/aranjiyyah-al-ghamdi.pdf}"
OUT="${TMPDIR:-/tmp}/aranjiyyah-pages"
mkdir -p "$OUT"
p="$1"
pdftoppm -f "$p" -l "$p" -r 90 -gray -png -singlefile "$BOOK" "$OUT/p$p"
echo "$OUT/p$p.png"
