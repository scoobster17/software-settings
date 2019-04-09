set_color yellow;
echo \n"Reloading local.fish"
set_color normal;

set -x PROJECTS_DIR "~/Documents/path/to/projects"
echo "Projects directory set to" $PROJECTS_DIR;

# Google Cloud
# bass source $HOME/Documents/tools/google-cloud-sdk/path.bash.inc

# NVM
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh