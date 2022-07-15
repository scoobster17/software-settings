#!/bin/bash

[ -f ~/.gitconfig ] && rm ~/.gitconfig
ln -s $PROJECTS_DIR"/personal/software-settings/git/.gitconfig" ~/.gitconfig