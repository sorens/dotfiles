#!/bin/sh

WORK_DIR="$HOME/Downloads"
SCP="$WORK_DIR/Source_Code_Pro.zip"
SFP="$WORK_DIR/SF-Pro.dmg"
SFC="$WORK_DIR/SF-Compact.dmg"
SFM="$WORK_DIR/SF-Mono.dmg"
NY="$WORK_DIR/NY.dmg"
curl -s -o "$SCP" https://fonts.google.com/download?family=Source%20Code%20Pro
CURL -s -o "$SFP" https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg
CURL -s -o "$SFC" https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg
CURL -s -o "$SFM" https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
CURL -s -o "$NY" https://devimages-cdn.apple.com/design/resources/download/NY.dmg

open "$WORK_DIR"