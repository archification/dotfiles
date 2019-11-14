#!/bin/bash

yay -Syu
dotgit.sh
cd $HOME/.config/nvim/bundle
find . -maxdepth 1 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull
mpv "$HOME/.config/sounds/thing.mp3"
