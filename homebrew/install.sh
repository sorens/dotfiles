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
brew install ack wget tree

# Crypto/security
brew install gpg gpg2

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
