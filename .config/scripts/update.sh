#!/bin/bash

yay -Syu
cd $HOME/.config/scripts
./dotgit.sh
cd $HOME/powerlevel10k
git pull
