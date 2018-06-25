#!/usr/bin/env bash

cd $1

ping -q -c 1 github.com 2>/dev/null 1>/dev/null

if [ "$?" == "0" ]; then
  git fetch
  if [ "$(git df origin/master)" ]
    then echo "git: .bashrc differs"
  fi
fi

cd $HOME
