#!/bin/env sh

maim -s -l -c 0,0.5,0.5,0.3 -u --format png /dev/stdout \
    | curl -F "file=@-" 0x0.st \
    | xclip -selection clipboard
notify-send -u low \
    "screenshot" \
    "it's done" \
    -i $HOME/pictures/avatars/arch.png
mpv --volume=50 --really-quiet "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
