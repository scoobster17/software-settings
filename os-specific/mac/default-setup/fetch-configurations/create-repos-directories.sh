#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/configure-repos-directories.sh"

if [ ! -d $PERSONAL_REPOS_DIR ]; then
  mkdir -p $PERSONAL_REPOS_DIR
  echo "Created personal repos folder"
else
  echo $PERSONAL_REPOS_DIR" already exists"
fi

if [ ! -d $WORK_REPOS_DIR ]; then
  read -p "Will you install work repos on this machine? (Y/n) " -n 1 answer
  echo
  if [[ "$answer" == $'\0A' || "$answer" =~ ^[Yy]$ ]]; then
    mkdir -p $WORK_REPOS_DIR
    touch WORK_REPOS_DIR"/.gitconfig"
    open -g WORK_REPOS_DIR"/.gitconfig"
    echo "Created work repos folder. !!! Remember to enter work email as git username in work repos dir !!!"
  fi
else
  echo $WORK_REPOS_DIR" already exists"
fi