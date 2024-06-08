#!/usr/bin/env bash

echo "Setting up custom functions"

#-- NETWORK --#
lip () {
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

eip () {
  case "$OS" in
    WINDOWS)
      nslookup myip.opendns.com. resolver1.opendns.com
      ;;
    MAC)
      dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com
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
gsk () {
  ssh-keygen -a 100 -t ed25519 -f ~/.ssh/${1:-id}_ed25519
}