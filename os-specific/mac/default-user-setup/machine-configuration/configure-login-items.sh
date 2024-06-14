#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/conditional_add_login_item.sh"

conditional_add_login_item CopyClip
conditional_add_login_item Spectacle