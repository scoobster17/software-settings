#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/configure-projects-directory.sh"

mkdir -p $PROJECTS_DIR
echo "Projects directory set to: "$PROJECTS_DIR

mkdir "$PROJECTS_DIR/personal"
echo "Created personal projects folder"
mkdir "$PROJECTS_DIR/work"
echo "Created work projects folder"