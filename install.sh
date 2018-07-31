#!/usr/bin/env bash

if [ -f $HOME/.bash_profile ]; then rm $HOME/.bash_profile; fi
if [ -f $HOME/.bashrc ]; then rm $HOME/.bashrc; fi
if [ -f $HOME/.hyper.js ]; then rm $HOME/.hyper.js; fi
ln -s $(pwd)/.bash_profile $HOME
ln -s $(pwd)/.bashrc $HOME
ln -s $(pwd)/.hyper.js $HOME
