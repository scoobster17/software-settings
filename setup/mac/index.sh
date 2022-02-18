#!/bin/bash

SETUP_ROOT_DIR=$(pwd)/$(dirname "$0")

source "$SETUP_ROOT_DIR/apps/install-brew.sh"
source "$SETUP_ROOT_DIR/apps/install-apps.sh"

source "$SETUP_ROOT_DIR/fetch-configurations/authenticate-git.sh"
source "$SETUP_ROOT_DIR/fetch-configurations/fetch-settings.sh"

source "$SETUP_ROOT_DIR/machine-configuration/configure-git.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-default-apps.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-downloads.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-dock.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-docker.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-login-items.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-finder.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-displays.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-default-browser.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-nvm.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-npm.sh"
source "$SETUP_ROOT_DIR/machine-configuration/configure-zsh.sh"