#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

# install "mandatory" tools/apps
source "$DIR/is-brew-app-installed.sh"

# "mandatory" tools
is_brew_app_installed gh || brew install gh;
is_brew_app_installed nvm || brew install nvm;
is_brew_app_installed trash || brew install trash;
# TODO: move these 2 to bash setup
is_brew_app_installed zsh-autosuggestions || brew install zsh-autosuggestions;
is_brew_app_installed zsh-syntax-highlighting || brew install zsh-syntax-highlighting;

# "mandatory" apps
is_brew_app_installed 1password || brew install 1password;
is_brew_app_installed coreutils || brew install coreutils; # for greadlink in .zshrc
is_brew_app_installed docker --cask || brew install --cask docker;
is_brew_app_installed google-chrome || brew install google-chrome;
is_brew_app_installed iterm2 || brew install iterm2;
is_brew_app_installed slack || brew install slack;
is_brew_app_installed spectacle || brew install spectacle;
is_brew_app_installed sublime-text || brew install sublime-text;

# start "mondatory" brew background apps
open -a Docker
open -a Spectacle

# install "optional" tools/apps
source "$DIR/conditional-brew-install.sh"

# tools
conditional_brew_install ffmpeg
conditional_brew_install glab
conditional_brew_install kubernetes-cli
conditional_brew_install nginx
conditional_brew_install speedtest-cli
conditional_brew_install sqlite
conditional_brew_install terraform
conditional_brew_install tmux

# apps
conditional_brew_install caffeine
conditional_brew_install charles
conditional_brew_install clickup
conditional_brew_install db-browser-for-sqlite
conditional_brew_install expressvpn
conditional_brew_install figma
conditional_brew_install firefox
conditional_brew_install google-cloud-sdk
conditional_brew_install messenger
conditional_brew_install microsoft-excel
conditional_brew_install microsoft-word
conditional_brew_install ngrok
conditional_brew_install omnidisksweeper
conditional_brew_install paw
conditional_brew_install postman
conditional_brew_install simplenote
conditional_brew_install skype
conditional_brew_install spotify
conditional_brew_install studio-3t
conditional_brew_install toggl
conditional_brew_install veracrypt
conditional_brew_install webstorm
conditional_brew_install whatsapp
conditional_brew_install zoomus

# mac app store cli
is_brew_app_installed mas || brew install mas;

# Open mac app store for manual login
# mas signin scoobster17@hotmail.co.uk
# Temporary workaround until mas fixed: https://github.com/mas-cli/mas/issues/164
open -a App\ Store.app
read -p "Opened Mac App Store, please manually log in and then hit any key here to continue installation/setup. If you don't do this, 'mas' apps like trello won't be installed. (Press any key)"

# mas apps TODO: optional install like brew apps above
mas search "as timer" | grep '  AS Timer ' | awk '{print $1}' | xargs mas install
mas search boop | grep '  Boop ' | awk '{print $1}' | xargs mas install
mas search copyclip | grep '  CopyClip ' | awk '{print $1}' | xargs mas install
mas search trello | grep '  Trello ' | awk '{print $1}' | xargs mas install

# start "mandatory" mas background apps
open -a CopyClip

# TODO optional signout, default no
# mas signout