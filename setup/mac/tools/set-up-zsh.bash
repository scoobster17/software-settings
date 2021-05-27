#!/usr/bin/env zsh

#-- Install Oh My ZSH --#
OH_MY_ZSH_PATH=~/Downloads/install-oh-my-zsh.sh
curl -Lo $OH_MY_ZSH_PATH https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh $OH_MY_ZSH_PATH
rm $OH_MY_ZSH_PATH

source "$( echo $(pwd) )/set-projects-directory.bash"

cd $PROJECTS_DIR
echo "Navigated to projects directory"

git clone https://github.com/scoobster17/software-settings.git
cd software-settings
echo "Navigated into software-settings repo root"

rm ~/.zshrc
ln -s $PROJECTS_DIR"/software-settings/zsh/.zshrc" ~/.zshrc

source ~/.zshrc