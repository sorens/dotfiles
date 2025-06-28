#!/bin/bash
#
# Safari defaults
# Sets preferred Safari settings

# quit safari if it's running
osascript -e 'tell application "Safari" to quit'

# developer features
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true

# ui preferences
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari CanPromptForPushNotifications -bool false
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari UniversalSearchFeatureNotificationHasBeenDisplayed -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari ShowFavoritesUnderSmartSearchField -bool false

# session management
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true

# autofill settings (disable most but keep username/password)
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# new tab/window behavior (1 = empty page)
defaults write com.apple.Safari NewTabBehavior -int 1
defaults write com.apple.Safari NewWindowBehavior -int 1

echo "Safari defaults set. Changes will take effect when Safari is next launched."
