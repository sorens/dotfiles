#!/bin/bash
#
# Mail defaults
# Sets preferred Mail.app settings

# quit mail if it's running
osascript -e 'tell application "Mail" to quit'

# copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.mail NumberOfSnippetLines -int 1
defaults write com.apple.mail JunkMailBehavior -int 0
defaults write com.apple.mail ConversationViewMarkAllAsRead -bool true


echo "Mail defaults set. Changes will take effect when Mail is next launched."
