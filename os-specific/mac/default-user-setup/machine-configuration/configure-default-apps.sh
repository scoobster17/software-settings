#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/../apps/is-brew-app-installed.sh"

is_brew_app_installed duti || brew install duti;

duti -s com.jetbrains.Webstorm ejs all

duti -s com.jetbrains.Webstorm jsx all
duti -s com.jetbrains.Webstorm ts all
duti -s com.jetbrains.Webstorm tsx all

duti -s com.jetbrains.Webstorm yml all

duti -s com.jetbrains.Webstorm md all

duti -s com.jetbrains.Webstorm scss all

duti -s com.microsoft.Excel csv all
