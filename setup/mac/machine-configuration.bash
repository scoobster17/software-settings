#!/bin/bash

# Make all downloads go to Desktop
# Doing it this way means each app doesn't need to be set up individually
sudo rm -rf ~/Downloads
ln -s ~/Desktop ~/Downloads
