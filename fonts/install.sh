#!/usr/bin/env bash
set -euo pipefail

WORK_DIR="$HOME/Downloads"
DOWNLOADS=(
  "SourceCodePro-Regular-OTF.zip|https://github.com/adobe-fonts/source-code-pro/releases/download/2.042R-u%2F1.062R-i%2F1.026R-vf/OTF-source-code-pro-2.042R-u_1.062R-i.zip"
  "SF-Pro.dmg|https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg"
  "SF-Compact.dmg|https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg"
  "SF-Mono.dmg|https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg"
  "NY.dmg|https://devimages-cdn.apple.com/design/resources/download/NY.dmg"
  "LigaturizedFonts.zip|https://github.com/ToxicFrog/Ligaturizer/releases/download/v5/LigaturizedFonts.zip"
  "apl2741.zip|https://apl385.com/fonts/apl2741.zip"
  "apl385.zip|https://apl385.com/fonts/apl385.zip"
  "IBMPlexMono.zip|https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/IBMPlexMono.zip"
)

mkdir -p "$WORK_DIR"

echo "fonts: downloading..."

for entry in "${DOWNLOADS[@]}"; do
  IFS='|' read -r DEST URL <<< "$entry"
  FILE="$WORK_DIR/$DEST"

  if [ -s "$FILE" ]; then
    echo "=> already downloaded: $FILE"
  else
    echo "=> downloading $URL to $FILE..."
    curl -s -L -o "$FILE" "$URL"
  fi
done

echo "fonts: download complete"
open "$WORK_DIR"
