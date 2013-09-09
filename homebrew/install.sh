#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# Install homebrew packages
brew install spark ack hub wget tree

# Install `brew cask` command for installing native apps.
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

installcask alfred
installcask daisy-disk
installcask dropbox
installcask google-chrome
installcask macvim
installcask one-password
installcask postgres
# installcask slicy <-- installed via mac app store :(
installcask spotify
installcask the-unarchiver
installcask things
installcask transmission
installcask transmit
installcask true-crypt
installcask virtualbox
installcask vagrant
installcask vlc
# installcask xscope <-- installed via mac app store :(

installcask gpgtools
sudo launchctl unload -w /Library/LaunchAgents/org.gpgtools.macgpg2.gpg-agent.plist

open ~/Applications/Alfred\ 2.app
sleep 1 # lol
brew cask alfred link

exit 0
