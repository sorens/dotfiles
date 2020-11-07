#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Homebrew not installed; installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Core utilities
brew install ack wget tree tmux ripgrep
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# Editors
brew install neovim

# Networking
brew install nmap hping httpie

# Languages/runtimes, build tools, dependency management
brew install go node rbenv ruby-build cloc

# Source control
brew install hub cvs cvsync mercurial bazaar

# Syncing
brew install syncthing

# IaaS/PaaS, devops tools
brew install awscli heroku ansible terraform packer
