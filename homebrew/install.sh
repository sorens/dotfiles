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

# Random utilities
brew install spark wget tree gpg gpg2 oath-toolkit nmap hping

# Dev tools
brew install ack hub node go mercurial cvs cvsync ansible signify-osx docker boot2docker

# Infrastructure
brew install syncthing

# IaaS/PaaS tools
brew install heroku-toolbelt
brew tap linode/cli
brew install linode-cli

# Games/graphics libs and tools
brew install assimp glm

# Install `brew cask` command for installing native apps.
# brew tap phinze/homebrew-cask
# brew install brew-cask

# function installcask() {
#   brew cask install "${@}" 2> /dev/null
# }

# FIXME: add download + install machinery for:
# http://i.agilebits.com/dist/1P/mac4/1Password-4.3.zip
# http://theunarchiver.googlecode.com/files/TheUnarchiver3.9.1.zip
# https://github.com/PostgresApp/PostgresApp/releases/download/9.3.4.1/Postgres-9.3.4.1.zip
# http://download.transmissionbt.com/files/Transmission-2.82.dmg
# http://www.panic.com/transmit/d/Transmit%204.4.6.zip
# http://culturedcode.com/things/download/
# http://get.videolan.org/vlc/2.1.4/macosx/vlc-2.1.4.dmg
# http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg
# https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.4.dmg

# installcask alfred
# installcask daisy-disk
# installcask dropbox
# installcask google-chrome
# installcask macvim
# installcask onepassword
# installcask postgres
# installcask slicy <-- installed via mac app store :(
# installcask spotify
# installcask the-unarchiver
# installcask things
# installcask transmission
# installcask transmit
# installcask true-crypt
# installcask virtualbox
# installcask vagrant
# installcask vlc
# installcask xscope <-- installed via mac app store :(

# installcask gpgtools
# sudo launchctl unload -w /Library/LaunchAgents/org.gpgtools.macgpg2.gpg-agent.plist

# open ~/Applications/Alfred\ 2.app
# sleep 1 # lol
# brew cask alfred link

exit 0
