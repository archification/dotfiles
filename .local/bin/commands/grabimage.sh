#!/bin/env sh
maim -s | xclip -selection clipboard -t image/png -i
mpv "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
