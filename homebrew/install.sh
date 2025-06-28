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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Core utilities
brew install ack wget tree tmux ripgrep shellcheck jq wader/tap/fq

# Networking
brew install nmap httpie websocat
# hping

# Languages/runtimes, build tools, dependency management
brew install mise ruby-build

# Source control
brew install gh

# IaaS/PaaS, devops tools
brew install awscli ansible hashicorp/tap/terraform hashicorp/tap/packer

# update to the latest git
brew install git git-lfs

# security
brew install 1password-cli
