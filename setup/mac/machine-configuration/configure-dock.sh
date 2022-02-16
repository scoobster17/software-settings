#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/../apps/is-brew-app-installed.sh"

if defaults read com.apple.dock orientation | grep -q 'left'; then
  echo "Dock already oriented to left of screen"
else
  defaults write com.apple.dock orientation left && killall Dock
fi

# make dock icons smaller
if defaults read com.apple.dock tilesize | grep -q '40'; then
  echo "Dock icons already 40px"
else
  defaults write com.apple.dock tilesize -integer 40
fi

is_brew_app_installed dockutil || brew install dockutil;

source "$DIR/add-dock-app.sh"
source "$DIR/remove-dock-app.sh"

remove_dock_app "App Store"
remove_dock_app "Calendar"
remove_dock_app "Contacts"
remove_dock_app "FaceTime"
remove_dock_app "Keynote"
remove_dock_app "Launchpad"
remove_dock_app "Mail"
remove_dock_app "Maps"
remove_dock_app "Messages"
remove_dock_app "Music"
remove_dock_app "News"
remove_dock_app "Numbers"
remove_dock_app "Notes"
remove_dock_app "Photos"
remove_dock_app "Podcasts"
remove_dock_app "Reminders"
remove_dock_app "Safari"
remove_dock_app "System Preferences"
remove_dock_app "TV"

add_dock_app "Google Chrome"
add_dock_app iTerm
add_dock_app Webstorm
add_dock_app Slack
add_dock_app Whatsapp
add_dock_app "Studio 3T"
add_dock_app Spotify
add_dock_app "Sublime Text"
add_dock_app "1Password 7"

# not using add_dock_app here because of flags
dockutil --add /Applications --view grid --display folder --sort name --before "Downloads"
