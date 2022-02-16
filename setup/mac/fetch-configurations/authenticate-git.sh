#!/bin/bash

echo "Authenticating GitHub (via gh)..."

gh auth login

NOCOLOR="\033[0m"
RED="\033[0;31m"
YELLOW="\033[1;33m"

if [ ! -f ~/.ssh/github_ed25519 ]; then
  if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo -e "${RED}Please reauthenticate gh and create an ssh key${NOCOLOR}"
  else
  	read -p "Do you want to rename id_ed25519(.pub) to github_ed25519(.pub)? (Y/n) " -n 1 answer
  	echo
  	if [[ "$answer" == $'\0A' || "$answer" =~ ^[Yy]$ ]]; then
    	echo "Renaming id_ed25519 to github_ed25519..."
    	mv ~/.ssh/id_ed25519 ~/.ssh/github_ed25519
    	echo "Renaming id_ed25519.pub to github_ed25519.pub..."
    	mv ~/.ssh/id_ed25519.pub ~/.ssh/github_ed25519.pub
    	echo "Renamed id_ed25519(.pub) to github_ed25519(.pub)"
    else
      echo -e "${YELLOW}Make sure to remember what id_ed25519(.pub) is used for!${NOCOLOR}"
  	fi
  fi
fi

touch ~/.ssh/config
chmod 600 ~/.ssh/config
echo -e "Host github.com\n  IdentityFile ~/.ssh/github_ed25519" >> ~/.ssh/config