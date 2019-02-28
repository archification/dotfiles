#!/bin/bash

yay -Syu
cd $HOME/.config/scripts
./gitpulls.sh
./dotgit.sh
