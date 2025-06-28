#!/bin/sh

WORK_DIR="$HOME/Downloads"
SCP="$WORK_DIR/Source_Code_Pro.zip"
SFP="$WORK_DIR/SF-Pro.dmg"
SFC="$WORK_DIR/SF-Compact.dmg"
SFM="$WORK_DIR/SF-Mono.dmg"
NY="$WORK_DIR/NY.dmg"
echo "fonts: downloading..."
echo "fonts: downloading source code pro @ google..."
curl -s -o "$SCP" https://fonts.google.com/download?family=Source%20Code%20Pro
echo "fonts: downloading sf-pro @ apple..."
curl -s -o "$SFP" https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg
echo "fonts: downloading sf-compact @ apple..."
curl -s -o "$SFC" https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg
echo "fonts: downloading sf-mono @ apple..."
curl -s -o "$SFM" https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
echo "fonts: downloading ny @ apple..."
curl -s -o "$NY" https://devimages-cdn.apple.com/design/resources/download/NY.dmg
echo "fonts: download complete"
open "$WORK_DIR"
