#!/usr/bin/env bash
set -euo pipefail

WORK_DIR="$HOME/Downloads"
DOWNLOADS=(
  "DaisyDisk.zip|https://daisydiskapp.com/downloads/DaisyDisk.zip"
  "Docker.dmg|https://desktop.docker.com/mac/main/arm64/Docker.dmg"
  "EagleFiler.dmg|https://c-command.com/downloads/EagleFiler-1.9.19.dmg"
  "Fantastical.zip|https://flexibits.com/fantastical/download"
  "Firefox.dmg|https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-CA"
  "googlechrome.dmg|https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"
  "Kaleidoscope.zip|https://kaleidoscope.app/download-v3"
  "Signal.dmg|https://updates.signal.org/desktop/signal-desktop-mac-universal-7.76.0.dmg"
  "Slack.dmg|https://slack.com/api/desktop.latestRelease?arch=universal&variant=dmg&redirect=true"
  "Tower.zip|https://www.git-tower.com/apps/tower3-mac/497-3c2a101a/Tower-14.5-497.zip"
  "VSCode-darwin-arm64.zip|https://code.visualstudio.com/sha/download?build=stable&os=darwin"
  "Xcodes.zip|https://github.com/XcodesOrg/xcodesapp/releases/latest.zip"
  "zed.dmg|https://zed.dev/download-success?asset=Zed-aarch64.dmg&version=0.210.4&channel=stable"
)

mkdir -p "$WORK_DIR"

echo "apps: downloading..."

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

echo "apps: download complete"
open "$WORK_DIR"
