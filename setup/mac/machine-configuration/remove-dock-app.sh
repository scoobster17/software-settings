#!/bin/bash

remove_dock_app() {
  APP=$1

  if dockutil --find "$APP" | grep -q 'was not'; then
    echo "$APP already removed from dock";
    return 0;
  fi
  
  echo "Removing $APP from dock";
  dockutil --remove "$APP";
}
