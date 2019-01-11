#!/bin/bash

yay -Syu
flatpak update
cd $HOME/.config/scripts
./gitstuff.sh
./git.sh
