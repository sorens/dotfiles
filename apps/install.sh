#!/bin/sh

WORK_DIR="$HOME/Downloads"
curl -s -o "$WORK_DIR/Docker.dmg" https://desktop.docker.com/mac/main/arm64/Docker.dmg
curl -s -o "$WORK_DIR/Firefox.dmg" https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-CA
curl -s -o "$WORK_DIR/VSCode-darwin-arm64.zip" https://code.visualstudio.com/sha/download?build=stable&os=darwin
curl -s -o "$WORK_DIR/Slack.dmg" https://slack.com/api/desktop.latestRelease?arch=universal&variant=dmg&redirect=true
curl -s -o "$WORK_DIR/Kaleidoscope.zip" https://kaleidoscope.app/download-v3
curl -s -o "$WORK_DIR/Tower.zip" https://www.git-tower.com/apps/tower3-mac/342-26634c15/Tower-9.0-342.zip
curl -s -o "$WORK_DIR/EagleFiler.dmg" https://c-command.com/downloads/EagleFiler-1.9.8.dmg
curl -s -o "$WORK_DIR/DaisyDisk.zip" https://daisydiskapp.com/downloads/DaisyDisk.zip
curl -s -o "$WORK_DIR/googlechrome.dmg" https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg
curl -s -o "$WORK_DIR/zed.dmg" https://zed.dev/download-success?asset=Zed-aarch64.dmg&version=0.210.4&channel=stable
