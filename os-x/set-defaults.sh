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
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# Set a slightly fast key repeat.
defaults write -g InitialKeyRepeat -int 15  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2          # normal minimum is 2 (30 ms)

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
# fixme 'defaults[78666:531050] Could not write domain com.apple.universalaccess; exiting'
# defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# ****************************
# Dock
# ****************************

# scale effect
defaults write com.apple.dock "mineffect" -string "scale" 
defaults write com.apple.dock "tilesize" -int "48" 
defaults write com.apple.dock "orientation" -string "right"
killall Dock

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

# Set sidebar icon size to Small.
defaults write -g NSTableViewDefaultSizeMode -int 1

# Show all filename extensions.
defaults write -g AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# ****************************
# Safari
# ****************************

# Show debug/development menus.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true

# STOP BEING ANNOYING
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari CanPromptForPushNotifications -bool false
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari UniversalSearchFeatureNotificationHasBeenDisplayed -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari ShowFavoritesUnderSmartSearchField -bool false

# Tab/window restoration!
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true

# Turn off parts of AutoFill (but leave username/password AutoFill on).
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# New tabs/windows open to Empty Page.
defaults write com.apple.Safari NewTabBehavior -int 1
defaults write com.apple.Safari NewWindowBehavior -int 1

# ****************************
# Mail
# ****************************

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

defaults write com.apple.mail NumberOfSnippetLines -int 1
defaults write com.apple.mail JunkMailBehavior -int 0
defaults write com.apple.mail ConversationViewMarkAllAsRead -bool true


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

# ****************************
# Sound
# ****************************

defaults write -g com.apple.sound.beep.feedback -bool true

# ****************************
# Image Capture
# ****************************

# Disable incredibly annoying Image Capture/Photos.app popups when plugging in new iDevices.
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# ****************************
# Screen Capture
# ****************************

# Include data/time
defaults write com.apple.screencapture "include-date" -bool "true"
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
killall SystemUIServer

# ****************************
# Desktop
# ****************************
defaults write com.apple.finder "CreateDesktop" -bool "true"
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true"
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true" 
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true"
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true"
killall Finder

# ****************************
# Menubar
# ****************************
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE MMM d  h:mm:ss a\""

# ****************************
# Cleanup, etc.
# ****************************

echo "OS X preferences set. Please logout/reboot to see full changes."
