#!/bin/bash

source ./is-brew-app-installed.sh

conditional_brew_install() {
  APP=$1

  is_brew_app_installed $APP && return 0 || true

  read -p "Do you want to install $APP? (Y/n) " -n 1 answer
  echo
  if [[ "$answer" == $'\0A' || "$answer" =~ ^[Yy]$ ]]; then
    echo "Installing $APP..."
    brew install $APP
  fi
}
