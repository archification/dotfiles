#!/bin/bash
maim -s | xclip -selection clipboard -t image/png -i && mpv "$HOME/.config/sounds/thing.mp3"