#!/usr/bin/env sh

paru -Syu
dotgit.sh
echo
rustup update
notify-send -u low \
    "updates" \
    "They're done." \
    -i $HOME/pictures/avatars/arch.webp
mpv --volume=50 --really-quiet "$HOME/.local/bin/sounds/upgradecomplete.mp3" &
disown && exit
