#!/bin/bash

CURRENT_DOWNLOADS_PATH=~/Downloads
NEW_DOWNLOADS_PATH=~/Desktop

# Make all downloads go to Desktop
# Deleting and creating a symlink means each app doesn't need to be set up individually
mv $CURRENT_DOWNLOADS_PATH"/*" $NEW_DOWNLOADS_PATH
sudo rm -rf $CURRENT_DOWNLOADS_PATH
ln -s $NEW_DOWNLOADS_PATH $CURRENT_DOWNLOADS_PATH
