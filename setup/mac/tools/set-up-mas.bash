#!/bin/bash

# Open 1Password (installed via brew) to obtain MAS password
open -a 1Password\ 7

# Open mac app store for manual login
# mas signin scoobster17@hotmail.co.uk
# Temporary workaround until mas fixed: https://github.com/mas-cli/mas/issues/164
open -a App\ Store.app
read -p "Opened Mac App Store, please manually log in and then hit any key here to continue installation/setup. If you don't do this, 'mas' apps like trello won't be installed. (Press any key)"
