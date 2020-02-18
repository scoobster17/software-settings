#/bin/bash

# Install mas apps
mas search trello | grep '  Trello  ' | awk '{print $1}' | xargs mas install

# Signout after installing apps
mas signout
