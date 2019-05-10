#!/bin/bash
maim -s --format=png | imgur.sh && xclip -o | xsel -ib && mpv "$HOME/.config/sounds/thing.mp3"
