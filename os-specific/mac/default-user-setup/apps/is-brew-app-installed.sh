#!/bin/bash

is_brew_app_installed() {
  APP_TO_CHECK=$1

  brew ls $APP_TO_CHECK $2
  if [[ $? != 0 ]]; then
    return 1;
  fi
  
  echo "$APP_TO_CHECK is already installed";
  return 0;
}