# Install brew to download all apps and other tools
source ./tools/install-brew.bash

# Set certain machine configurations before installing apps/tools
source ./machine-configuration.bash

# Install apps
source ./apps/install-casks.bash

# Set up apps
source ./apps/set-up-google-chrome.bash
