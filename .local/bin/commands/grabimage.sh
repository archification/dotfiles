#!/bin/env sh

maim -s -l -c 0,0.5,0.5,0.3 -u --format png /dev/stdout \
    | copyq copy image/png -
notify-send -u low \
    "screenshot" \
    "it's done" \
    -i $HOME/pictures/avatars/arch.png
mpv --volume=25 --really-quiet "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
