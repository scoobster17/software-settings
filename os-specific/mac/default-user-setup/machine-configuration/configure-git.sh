#!/bin/bash

[ -f ~/.gitconfig ] && rm ~/.gitconfig
ln -s $PERSONAL_REPOS_DIR"/software-settings/git/.gitconfig" ~/.gitconfig