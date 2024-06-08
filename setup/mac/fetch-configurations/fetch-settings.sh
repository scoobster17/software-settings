#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/create-repos-directories.sh"

if [ ! -d $PERSONAL_REPOS_DIR"/software-settings" ]; then
  cd $PERSONAL_REPOS_DIR
  echo "Navigated to "$PERSONAL_REPOS_DIR

  echo -e "\n\nMAKE SURE YOU TYPE \"yes\" IF ASKED IF WANT TO CONTINUE. DO NOT PRESS ENTER!!!\n\n"

  gh repo clone scoobster17/software-settings
else
  echo "Settings already fetched"
fi

# auth cleanup
trash ~/.ssh/config
ln -s $PERSONAL_REPOS_DIR"/software-settings/.ssh/config" ~/.ssh/config
echo "~/.ssh/config replaced with settings symlink"