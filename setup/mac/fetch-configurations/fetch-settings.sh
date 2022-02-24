#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/create-projects-directory.sh"

if [ ! -d "$PROJECTS_DIR/personal/software-settings" ]; then
  cd "$PROJECTS_DIR/personal"
  echo "Navigated to $PROJECTS_DIR/personal"

  echo -e "\n\nMAKE SURE YOU TYPE \"yes\" IF ASKED IF WANT TO CONTINUE. DO NOT PRESS ENTER!!!\n\n"

  gh repo clone scoobster17/software-settings
else
  echo "Settings already fetched"
fi

# auth cleanup
trash ~/.ssh/config
ln -s $PROJECTS_DIR/personal/software-settings/.ssh/config ~/.ssh/config
echo "~/.ssh/config replaced with settings symlink"