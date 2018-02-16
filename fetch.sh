#!/usr/bin/env bash

cd $1

ping -q -c 1 github.com 2>.ping_output 1>.ping_output

if [ "$?" == "0" ]; then
  git fetch
  if [ "$(git df origin/master)" ]
    then echo "git: .bashrc differs"
  fi
fi

cd $HOME
