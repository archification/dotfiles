#!/bin/env sh
maim -s | imgur.sh && xclip -o | xsel -ib
mpv "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
