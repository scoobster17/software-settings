#!/bin/bash


# TMP_CHROME_FILE=$TMPDIR'googlechrome.dmg'

# curl -O https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $TMP_CHROME_FILE
# echo 'DMG downloaded to '$TMP_CHROME_FILE

# Source: https://apple.stackexchange.com/a/73931/260292
# Source: https://apple.stackexchange.com/a/311511/260292
# hdiutil attach $TMP_CHROME_FILE
# cp -r /Volumes/*.app /Applications
# hdiutil detach $TMP_CHROME_FILE

# echo 'Google Chrome installed.\n'


# Install Google Chrome with brew cask
# brew cask install google-chrome

# Set Chrome as default browser
open -a "Google Chrome" --args --make-default-browser
