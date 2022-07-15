#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/install-xcode-cli-tools.sh"

which -s brew
if [[ $? != 0 ]] ; then
  echo 'Installing Brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo 'Brew already installed. Updating...'
  brew update
fi
