#!/bin/env sh
maim -s | imgur.sh && xclip -o | xsel -ib
mpv "$HOME/.config/sounds/thing.mp3" &
disown && exit
