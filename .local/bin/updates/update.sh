#!/bin/env sh

yay -Syu
rustup update
dotgit.sh
vimgit.sh
notify-send -u low \
    "updates" \
    "They're done." \
    -i $HOME/pictures/avatars/arch.png
mpv --volume 50 --really-quiet "$HOME/.local/bin/sounds/upgradecomplete.mp3" &
disown && exit
