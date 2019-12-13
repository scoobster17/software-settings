# Install brew to download all apps and other tools
source $(cd tools; pwd)/install-brew.bash

# Set certain machine configurations before installing apps/tools
source ./machine-configuration.bash

# Install apps
source $(cd apps; pwd)/install-casks.bash

# Set up apps
source $(cd apps; pwd)/set-up-google-chrome.bash
