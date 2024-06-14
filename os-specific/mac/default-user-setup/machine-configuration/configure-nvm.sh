#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/../../../bash/tools-setup/.nvm.bash"

nvm install node