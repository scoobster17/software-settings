#!/bin/bash

xcode-select -p

if [[ $? != 0 ]] ; then
  echo 'Installing XCode CLI Tools'
  xcode-select --install
else
  echo 'XCode CLI Tools already installed'
  xcode-select --version
fi

