#!/usr/bin/env bash

ping -q -c 1 github.com 2>.ping_output 1>.ping_output

if [ "$?" == "0" ]; then
  cd $1
  git fetch
  if [ "$(git df origin/master)" ]
    then echo "git: .bashrc differs"
  fi
  cd $HOME
fi
