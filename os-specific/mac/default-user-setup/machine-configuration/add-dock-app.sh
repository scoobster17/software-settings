#!/bin/bash

add_dock_app() {
  APP=$1
  APP_PATH="/Applications/$APP.app"

  [ ! -d "$APP_PATH" ] && echo "$APP is not installed, cannot add to dock" && return 1;

  if dockutil --find $APP | grep -q 'was not'; then
    dockutil --add "$APP_PATH";
  else
    echo "$APP already added to dock"
  fi
}
