#!/usr/bin/env bash

# Google Cloud
echo "Setting up Google Cloud SDK"
[[ ":$PATH:" != *":$HOME/Documents/tools/google-cloud-sdk/bin:"* ]] && PATH="$HOME/Documents/tools/google-cloud-sdk/bin:${PATH}" # only adds to path if not there already
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'; fi

# NVM
echo "Setting up NVM"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
