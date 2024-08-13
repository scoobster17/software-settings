#!/bin/bash

DIR=$( dirname "$BASH_SOURCE" | sed "s:/./:/:" )

source "$DIR/conditional_add_login_item.sh"

# conditional_add_login_item CopyClip
# conditional_add_login_item Spectacle
conditional_add_login_item $PERSONAL_REPOS_DIR"/software-settings/os-specific/mac/default-user-setup/automator/Automation | Move Downloads to Desktop Hourly.app"