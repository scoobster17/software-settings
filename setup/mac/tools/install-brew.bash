#!/bin/bash

# Homebrew pre-requisite; install x-code CLI
xcode-select --install

# Install Homebrew for packages e.g. ffmpeg, fish, git, nginx, nvm, trash, zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# No need to install Homebrew Cask any more; done automatically by brew.
# Casks are used for Mac OS apps, e.g. Google Chrome, ITerm2
