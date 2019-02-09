#!/usr/bin/env bash

wd="$(pwd)"
cd $1

ping -q -c 1 -t 2 github.com 2>/dev/null 1>/dev/null

if [ "$?" == "0" ]; then
  git fetch 2>/dev/null 1>/dev/null
  if [ "$?" == "0" ]; then
      echo "Git Remote Fetched"
  else
    echo "Git Remote Unavailable"
  fi
else
  echo "PING failure"
fi


if [ "$(git diff origin/$(git rev-parse --abbrev-ref HEAD))" ]; then
    echo "git: .bashrc differs"
fi

cd "$wd"
