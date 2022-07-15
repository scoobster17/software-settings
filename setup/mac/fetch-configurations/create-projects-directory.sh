#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/configure-projects-directory.sh"

mkdir -p $PROJECTS_DIR
echo "Projects directory set to: "$PROJECTS_DIR

if [ ! -d "$PROJECTS_DIR/personal" ]; then
  mkdir "$PROJECTS_DIR/personal"
  echo "Created personal projects folder"
else
  echo "$PROJECTS_DIR/personal already exists"
fi

if [ ! -d "$PROJECTS_DIR/work" ]; then
  mkdir "$PROJECTS_DIR/work"
  echo "Created work projects folder"
else
  echo "$PROJECTS_DIR/work already exists"
fi