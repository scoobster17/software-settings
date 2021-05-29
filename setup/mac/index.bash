#!/usr/bin/env zsh

# Install brew to download all apps and other tools
source $(cd tools; pwd)/install-brew.bash

# Set certain machine configurations before installing apps/tools
source ./machine-configuration.bash

# Install apps
source $(cd tools; pwd)/install-brew-tools.bash
source $(cd apps; pwd)/install-casks.bash

# Set up mas for more app installs
source $(cd tools; pwd)/set-up-mas.bash

# Install mas apps
source $(cd tools; pwd)/install-mas-apps.bash

# Set up apps
source $(cd tools; pwd)/set-up-zsh.bash
source $(cd tools; pwd)/set-up-nvm.bash
source $(cd tools; pwd)/set-up-git.bash

# Instead of `source ~/.zshrc`, so aliases etc are loaded into current terminal session
exec zsh