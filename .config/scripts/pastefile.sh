#!/bin/bash

if [ -z "$1" ]
then
	echo "usage: $0 [ filename ]" && exit
elif [ ! -f "$1" ]
then
	echo "\$0: File '${1}' not found." && exit
fi

filetype=$(sed 's/^.*\.//' <<< $1)
{ echo \`\`\`$filetype && cat $1 && echo \`\`\`; } | xsel -ib
mpv "$HOME/.config/sounds/thing.mp3" &>/dev/null &
