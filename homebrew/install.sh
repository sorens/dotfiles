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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Core utilities
brew install ack wget tree tmux

# Crypto/security
# brew install gpg gpg2

# Networking
brew install nmap hping httpie

# Languages/runtimes, build tools, dependency management
brew install go node rbenv ruby-build cloc

# Source control
brew install hub cvs cvsync mercurial bazaar

# Syncing
brew install syncthing

# IaaS/PaaS, devops tools
brew install heroku-toolbelt ansible

# Games/graphics libs and tools
#brew install assimp glm sdl sdl2

exit 0
