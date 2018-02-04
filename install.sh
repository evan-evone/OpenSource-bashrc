#!/usr/bin/env bash

x=$(pwd)
if [ -f $HOME/.bash_profile ]; then rm ~/.bash_profile; fi
if [ -f $HOME/.bashrc ]; then rm ~/.bashrc; fi
ln -s $x/.bash_profile ~
ln -s $x/.bashrc ~
