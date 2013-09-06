# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# ****************************
# Keyboard
# ****************************

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Disable autocorrect.
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Set a really fast key repeat.
defaults write -g KeyRepeat -int 0

# Enable full keyboard access.
defaults write -g AppleKeyboardUIMode -int 3

# ****************************
# Mouse/trackpad
# ****************************

# Enable tap to click for this user and for the login screen.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
defaults write -g com.apple.mouse.tapBehavior -int 1

# Use scroll gesture with the Ctrl (^) modifier key to zoom.
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
defaults write com.apple.universalaccess closeViewSmoothImages -bool false

# Turn on four- and five-finger trackpad gestures.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2

# Turn on three-finger drag and tap gestures.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

# ****************************
# Finder
# ****************************

# Show the ~/Library folder.
chflags nohidden ~/Library

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Disable file extension change warning.
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set sidebar icon size to Small.
defaults write -g NSTableViewDefaultSizeMode -int 1

# Show all filename extensions.
defaults write -g AppleShowAllExtensions -bool true

# Show status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# Avoid creating .DS_Store files on network volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# ****************************
# Safari
# ****************************

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading.
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Make Safari’s search banners default to Contains instead of Starts With.
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# ****************************
# Mail
# ****************************

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# ****************************
# Disk Utility
# ****************************

# Enable the debug menu.
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

# ****************************
# Screensaver/LoginWindow
# ****************************

# Require a password immediately after the screensaver starts.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable "Reopen windows when logging back in" feature.
defaults write com.apple.loginwindow TALLogoutSavesState -bool false

# ****************************
# Dock
# ****************************

# Set default icon size in the Dock.
defaults write com.apple.dock tilesize -float 48

# ****************************
# Terminal
# ****************************

open "$ZSH/osx/IR_Black.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal "Default Window Settings" -string "IR_Black"
defaults write com.apple.terminal "Startup Window Settings" -string "IR_Black"

# ****************************
# Cleanup, etc.
# ****************************

# Restart affected applications that won't cause disruption of work (i.e. we won't restart Safari).
killall Dock

echo "Done setting up OS X preferences! NOTE: Some of these changes require a logout or restart to take effect."
