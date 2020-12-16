#!/bin/env sh

if [ -z "$1" ]
then
    echo "usage: $0 [ filename ]" && exit 1
elif [ ! -f "$1" ]
then
    echo "\$0: File '${1}' not found." && exit 1
fi

filetype=$(echo "$1" | sed 's/^.*\.//')

xsel -ib <<stuff
\`\`\`$filetype
"$(cat "$1")"
\`\`\`
stuff

mpv --volume=50 --really-quiet "$HOME/.local/bin/sounds/thing.mp3" &
