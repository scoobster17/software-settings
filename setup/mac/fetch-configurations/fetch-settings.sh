#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/create-projects-directory.sh"

cd "$PROJECTS_DIR/personal"
echo "Navigated to $PROJECTS_DIR/personal"

gh repo clone scoobster17/software-settings