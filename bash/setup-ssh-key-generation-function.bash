#!/usr/bin/env bash

gsk () {
  ssh-keygen -a 100 -t ed25519 -f ~/.ssh/${1:-id}_ed25519
}