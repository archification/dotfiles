#!/bin/env sh

date=$(date +%Y\-%m\-%d\_%H.%M.%S)
maim -s -l -c 0,0.5,0.5,0.3 -u --format png /dev/stdout \
    | tee >$HOME/pictures/screenshots/${date}.png \
    | copyq copy image/png -
notify-send -u low \
    "screenshot" \
    "it's done" \
    -i $HOME/pictures/avatars/arch.png
mpv --volume 50 --really-quiet "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit

: <<'END'
maim -s -l -c 0,0.5,0.5,0.3 -u --format png /dev/stdout \
    | tee >(copyq copy image/png) \
    | curl -F "file=@-" 0x0.st \
    | xclip -selection primary
END
