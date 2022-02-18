#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/../apps/is-brew-app-installed.sh"

# install app to manage night shift
is_brew_app_installed smudge/smudge/nightlight || brew install smudge/smudge/nightlight

# turn on night shift from sunset to sunrise
nightlight schedule start