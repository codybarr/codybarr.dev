#!/usr/bin/env bash
set -euo pipefail

# Install cwebp with `brew install webp` (macOS) or your package manager.
command -v cwebp >/dev/null || { echo 'cwebp is required' >&2; exit 1; }
cd "$(dirname "$0")/.."
mkdir -p images/optimized

for image in squish cockpit planning-poker meal-mingle scrabble-solver; do
  for width in 400 800 1200; do
    cwebp -quiet -q 82 -m 6 -metadata none -resize "$width" 0 \
      "images/$image.png" -o "images/optimized/$image-$width.webp"
  done
done

for width in 48 96 144; do
  cwebp -quiet -q 82 -m 6 -metadata none -resize "$width" 0 \
    images/avatar.png -o "images/optimized/avatar-$width.webp"
done
