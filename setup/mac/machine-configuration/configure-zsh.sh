#!/bin/bash

#-- Install Oh My ZSH --#
OH_MY_ZSH_PATH=~/Downloads/install-oh-my-zsh.sh
curl -Lo $OH_MY_ZSH_PATH https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh $OH_MY_ZSH_PATH
rm $OH_MY_ZSH_PATH

rm ~/.zshrc
ln -s $PERSONAL_REPOS_DIR"/software-settings/zsh/.zshrc" ~/.zshrc
source ~/.zshrc