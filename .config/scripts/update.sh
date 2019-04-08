#!/bin/bash

yay -Syu
cd $HOME/.config/scripts
./dotgit.sh
./vimgit.sh
cd $HOME/powerlevel10k
git pull
