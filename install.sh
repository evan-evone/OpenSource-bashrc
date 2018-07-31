#!/usr/bin/env bash

if [ -f $HOME/.bash_profile ]; then rm $HOME/.bash_profile; fi
if [ -f $HOME/.bashrc ]; then rm $HOME/.bashrc; fi
ln -s $(pwd)/.bash_profile $HOME
ln -s $(pwd)/.bashrc $HOME
