#!/bin/sh
#
# Claude Code configuration
# Creates symbolic links for Claude Code configuration files

set -e

# Get today's date in YYYY-MM-DD format
TODAY=$(date +%Y-%m-%d)
BACKUP_DIR=~/.config/backups/$TODAY/claude

# Path to the claude directory in dotfiles
DOTFILES_CLAUDE_DIR=$(dirname "$0")
DOTFILES_CLAUDE_DIR=$(cd "$DOTFILES_CLAUDE_DIR" && pwd)

# Create Claude config directory if it doesn't exist
mkdir -p ~/.claude

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
if [ -e ~/.claude/settings.json ] && [ ! -L ~/.claude/settings.json ]; then
  mkdir -p $BACKUP_DIR
  echo "Creating backup directory: $BACKUP_DIR"
fi

# Backup and link settings.json
backup_if_exists ~/.claude/settings.json "$BACKUP_DIR/settings.json"
ln -sf "$DOTFILES_CLAUDE_DIR/settings.json" ~/.claude/settings.json

echo "Claude Code configured successfully"
