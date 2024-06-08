#!/usr/bin/env bash

echo "Setting custom aliases"

#-- PROJECTS --#
if [ -n $PROJECTS_DIR ]; then
    alias pro="cd ${PROJECTS_DIR}"
fi


#-- TRAVERSING & FILE/FOLDER OPERATIONS --#
#alias ..="cd ../"
#alias ...="cd ../../"
alias la="ls -la"

#-- SHELL --#
alias which-shell="echo "$0
alias use-bash="chsh -s /bin/bash"
alias use-fish="chsh -s /usr/local/bin/fish"
alias use-zsh="chsh -s /bin/zsh"

#-- EDITOR --#
alias subl="~/bin/subl"
alias ws="webstorm"                     # shortcut for webstorm (/usr/local/bin/webstorm)
export MYEDITOR="subl"

#-- BASH --#
alias rb="source ~/.bash_profile"       # Reload bash profile
alias obp=$MYEDITOR" ~/.bash_profile"   # Open .bash_profile
alias obr=$MYEDITOR" ~/.bashrc"         # Open .bashrc
alias oba=$MYEDITOR" ~/.aliases.bash"   # Open bash aliases
alias obl=$MYEDITOR" ~/.bashlocal"      # Open .bashlocal
alias obh=$MYEDITOR" ~/.bash_history"   # Open bash history

#-- FISH --#
alias rf="source ~/.config/fish/config.fish"
alias ofc=$MYEDITOR" ~/.config/fish/config.fish"
alias ofh=$MYEDITOR" ~/.local/share/fish/fish_history"

#-- ZSH --#
alias rz="source ~/.zshrc"
alias ozr=$MYEDITOR" ~/.zshrc"
alias ozh=$MYEDITOR" ~/.zsh_history"

#-- NPM --#
alias gnm="npm ls -g --depth 0"         # List npm modules installed globally
alias rnm="rm -rf ./node_modules/"      # Remove node modules
alias dnm="rnm"

#-- NGROK --#
# alias ong=$MYEDITOR" ~/.ngrok2/ngrok.yml"
# alias ongi="open http://127.0.0.1:4040/inspect/http"

#-- NGINX --#
alias onx=$MYEDITOR" /usr/local/etc/nginx/nginx.conf"

#-- GIT --#
alias gdmb="git branch --merged | grep -v 'master' | grep -v 'main' | grep -v 'develop' | xargs git branch -d" # Delete branches merged in origin

#-- Terraform --#
alias tf="terraform"
