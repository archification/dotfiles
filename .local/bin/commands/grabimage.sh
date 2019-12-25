#!/bin/env sh

maim -su | xclip -selection clipboard -t image/png -i
notify-send "pic taken"
mpv "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
