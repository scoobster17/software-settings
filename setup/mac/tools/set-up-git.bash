#!/usr/bin/env bash

[ -f ~/.gitconfig ] && rm ~/.gitconfig
ln -s $PROJECTS_DIR"/software-settings/git/.gitconfig" ~/.gitconfig