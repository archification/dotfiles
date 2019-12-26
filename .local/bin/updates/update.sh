#!/bin/env sh

yay -Syu
dotgit.sh
cd $HOME/.config/nvim/bundle
find . -maxdepth 1 -name .git -type d \
    | rev \
    | cut -c 6- \
    | rev \
    | xargs -I {} git -C {} pull
mpv --volume 50 --really-quiet "$HOME/.local/bin/sounds/upgradecomplete.mp3" &
disown && exit
