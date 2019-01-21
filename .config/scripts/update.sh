#!/bin/bash

yay -Syu
flatpak update
cd $HOME/.config/scripts
./gitpulls.sh
./dotgit.sh
