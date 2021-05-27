#!/usr/bin/env bash

# Google Cloud
echo "Setting up Google Cloud SDK"
[[ ":$PATH:" != *":$HOME/Documents/tools/google-cloud-sdk/bin:"* ]] && PATH="$HOME/Documents/tools/google-cloud-sdk/bin:${PATH}" # only adds to path if not there already

# NVM
echo "Setting up NVM"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
