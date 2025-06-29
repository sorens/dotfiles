#!/bin/sh
#
# Zed editor configuration
# Creates symbolic links for Zed configuration files

set -e

# Get today's date in YYYY-MM-DD format
TODAY=$(date +%Y-%m-%d)
BACKUP_DIR=~/.config/backups/$TODAY/zed

# Path to the zed directory in dotfiles
DOTFILES_ZED_DIR=$(dirname "$0")
DOTFILES_ZED_DIR=$(cd "$DOTFILES_ZED_DIR" && pwd)

# Create Zed config directory if it doesn't exist
mkdir -p ~/.config/zed
mkdir -p ~/.config/zed/themes

# Function to backup a file if it exists and is not a symlink
backup_if_exists() {
  local file=$1
  local backup_path=$2

  if [ -e "$file" ] && [ ! -L "$file" ]; then
    echo "Backing up existing file: $file"
    mkdir -p "$(dirname "$backup_path")"
    cp -f "$file" "$backup_path"
  elif [ -L "$file" ]; then
    echo "Removing existing symlink: $file"
    rm -f "$file"
  fi
}

# Create backup directory if we're going to need it
if [ -e ~/.config/zed/settings.json ] && [ ! -L ~/.config/zed/settings.json ] || \
[ -e ~/.config/zed/keymap.json ] && [ ! -L ~/.config/zed/keymap.json ] || \
[ -e ~/.config/zed/themes/xy-zed.json ] && [ ! -L ~/.config/zed/themes/xy-zed.json ] || \
   [ -e ~/.config/zed/themes/na86.json ] && [ ! -L ~/.config/zed/themes/na86.json ]; then
  mkdir -p $BACKUP_DIR/themes
  echo "Creating backup directory: $BACKUP_DIR"
fi

# Backup and link settings.json
backup_if_exists ~/.config/zed/settings.json "$BACKUP_DIR/settings.json"
ln -sf "$DOTFILES_ZED_DIR/settings.json" ~/.config/zed/settings.json

# Backup and link keymap.json
backup_if_exists ~/.config/zed/keymap.json "$BACKUP_DIR/keymap.json"
ln -sf "$DOTFILES_ZED_DIR/keymap.json" ~/.config/zed/keymap.json

# Backup and link theme files
backup_if_exists ~/.config/zed/themes/na86.json "$BACKUP_DIR/themes/na86.json"
ln -sf "$DOTFILES_ZED_DIR/themes/na86.json" ~/.config/zed/themes/na86.json
backup_if_exists ~/.config/zed/themes/xy-zed.json "$BACKUP_DIR/themes/xy-zed.json"
ln -sf "$DOTFILES_ZED_DIR/themes/xy-zed.json" ~/.config/zed/themes/xy-zed.json

echo "Zed configured successfully"
