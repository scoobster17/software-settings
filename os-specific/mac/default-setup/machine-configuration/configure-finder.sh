#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

if defaults read com.apple.finder AppleShowAllFiles | grep -q 'TRUE'; then
  echo "Finder is already showing hidden files"
else
  defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder
fi

source "$DIR/../apps/is-brew-app-installed.sh"

is_brew_app_installed mysides || brew install mysides

if mysides list | grep -q "$USER ->"; then
  echo "Home directory is already in the finder favourites"
else
  mysides add $USER "file:///Users/$USER"
fi

if mysides list | grep -q "Bin ->"; then
  echo "Bin is already in the finder favourites"
else
  mysides add Bin "file:///Users/$USER/.Trash"
fi
