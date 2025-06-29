#!/bin/sh

WORK_DIR="$HOME/Downloads"
SCP="$WORK_DIR/Source_Code_Pro.zip"
SFP="$WORK_DIR/SF-Pro.dmg"
SFC="$WORK_DIR/SF-Compact.dmg"
SFM="$WORK_DIR/SF-Mono.dmg"
NY="$WORK_DIR/NY.dmg"
LIG="$WORK_DIR/LigaturizedFonts.zip"
AP1="$WORK_DIR/apl2741.zip"
AP2="$WORK_DIR/apl385.zip"
IBM="$WORK_DIR/IBMPlexMono.zip"
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
echo "fonts: downloading ligaturized @ github..."
curl -s -o "$LIG" https://github.com/ToxicFrog/Ligaturizer/releases/download/v5/LigaturizedFonts.zip
# echo "fonts: downloading roboto mono @ github..."
# curl -s -o "$RM"
echo "fonts: downloading apl-2741 @ apl385..."
curl -s -o "$AP1" https://apl385.com/fonts/apl2741.zip
echo "fonts: downloading apl-385 @ apl385..."
curl -s -o "$AP2" https://apl385.com/fonts/apl385.zip
echo "fonts: downloading ibm plex mono @ github..."
curl -s -o "$IBM" https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/IBMPlexMono.zip
echo "fonts: download complete"
open "$WORK_DIR"
