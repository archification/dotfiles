#!/bin/bash
maim -s --format=png | xclip -selection clipboard -t image/png -i && mpv "$HOME/.config/sounds/thing.mp3"
