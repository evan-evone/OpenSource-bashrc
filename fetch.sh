#!/usr/bin/env bash

cd $1

ping -q -c 1 -t 2 github.com 2>/dev/null 1>/dev/null

if [ "$?" == "0" ]; then
  git fetch 2>/dev/null 1>/dev/null
  if [ "$?" == "0" ]; then
    if [ "$(git diff origin/$(git rev-parse --abbrev-ref HEAD))" ]
      then echo "git: .bashrc differs"
    fi
  else
    echo "GitHub unavailable"
  fi
else
  echo "PING failure"
fi

cd $HOME
