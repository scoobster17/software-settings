#!/bin/bash

if dscl . read ~ | grep Picture | grep -c Basketball > /dev/null 2>&1; then
  echo "User /Users/philg picture already set to Basketball"
else
  echo "Changing /Users/$USER picture to basketball... (password required)"
  dscl . delete /Users/$USER JPEGPhoto
  dscl . delete /Users/$USER Picture
  sudo dscl . create /Users/$USER Picture "/Library/User Pictures/Sports/Basketball.png"
  echo "User picture set to $(dscl . read ~ | grep Picture | grep Basketball)"
  echo "NOTE: Reboot required to see updated user picture".
fi

