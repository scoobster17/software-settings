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
source $(cd apps; pwd)/set-up-google-chrome.bash
