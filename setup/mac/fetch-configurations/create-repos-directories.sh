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
  mkdir -p $WORK_REPOS_DIR
  echo "Created work repos folder"
else
  echo $WORK_REPOS_DIR" already exists"
fi