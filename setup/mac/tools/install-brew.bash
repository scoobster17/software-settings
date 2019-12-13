#!/bin/bash

# Homebrew pre-requisite; install x-code CLI
xcode-select --install

# Install Homebrew for packages e.g. ffmpeg, fish, git, nginx, nvm, trash, zsh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew Cask for Mac OS apps, e.g. Google Chrome, ITerm2
brew install caskroom/cask/brew-cask
