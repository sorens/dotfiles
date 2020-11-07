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
brew install ack wget tree tmux ripgrep shellcheck
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# Networking
brew install nmap hping httpie websocat

# Languages/runtimes, build tools, dependency management
brew install go node rbenv ruby-build cloc rust python@3.8

# Source control
brew install hub cvs cvsync mercurial bazaar

# IaaS/PaaS, devops tools
brew tap heroku/brew
brew install awscli heroku ansible terraform packer

# gpg used for signing git commits and other encryption
brew install gpg