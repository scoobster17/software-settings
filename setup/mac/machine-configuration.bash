#!/bin/bash


###############################################################################
# Make all downloads go to Desktop
###############################################################################

CURRENT_DOWNLOADS_PATH=~/Downloads
NEW_DOWNLOADS_PATH=~/Desktop

# Deleting and creating a symlink means each app doesn't need to be set up individually
mv $CURRENT_DOWNLOADS_PATH"/*" $NEW_DOWNLOADS_PATH
sudo rm -rf $CURRENT_DOWNLOADS_PATH
ln -s $NEW_DOWNLOADS_PATH $CURRENT_DOWNLOADS_PATH


###############################################################################
# Set default programs for certain file extensions
###############################################################################

duti -s com.jetbrains.Webstorm jsx all

duti -s com.jetbrains.Webstorm ts all
duti -s com.jetbrains.Webstorm tsx all
