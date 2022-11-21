#!/usr/bin/env bash

echo "Setting up custom functions"

#-- NETWORK --#
ip () {
  case "$OS" in
    WINDOWS)
      ipconfig
      ;;
    MAC)
      ifconfig | grep "inet " |  grep -v 127.0.0.1
      ;;
    *)
      echo "OS NOT RECOGNISED"
      ;;
  esac
}

#-- FILE / FOLDER OPERATIONS --#
cl () { cd "$1"; ls -a; }               # Navigate to a directory and list contents
mat () { mkdir "$1"; cd "$1"; }         # Make directory specified and traverse to it
cao () { touch "$1"; open "$1"; }       # create file and open it
cae () { touch "$1"; $MYEDITOR "$1"; }  # create file and open for editing

#-- ALIAS-LIKE --#
oit () {
  open -a iTerm .
}
gsk () {
  ssh-keygen -a 100 -t ed25519 -f ~/.ssh/${1:-id}_ed25519
}

#-- WORK --#
export PATH=$PATH:~/Documents/projects/work/backend/tools/bin

if [ ! -f ~/.npmrc ]; then
    touch ~/.npmrc
fi
export NPM_TOKEN=$(cat ~/.npmrc | sed -e 's+//registry.npmjs.org/:_authToken=++')

oke () {
  pro
  cd work/backend/tools
  git pull --all
  cd src/kube-mce
  npm run electron
}

okm () {
  pro;
  cd work/backend/tools;
  git pull --all;
  open -a ~/Applications/Chrome\ Apps.localized/Kube\ MCE.app;
  bin/kube mce
}

alias g="gcloud"

function gssh() {
  PROJECT=$1
  INSTANCE=$2
  shift; shift;
  g compute ssh $INSTANCE --project $PROJECT --tunnel-through-iap $@
}

alias gst='gssh splytech-tooling'
alias gsds='gssh splytech-dev-system'
alias gsdw='gssh splytech-dev-widget'
alias gsdc='gssh splytech-dev-core'
alias gsdo='gssh splytech-dev-operations'
alias gsps='gssh splytech-prod-system'
alias gspw='gssh splytech-prod-widget'
alias gspc='gssh splytech-prod-core'
alias gspo='gssh splytech-prod-operations'