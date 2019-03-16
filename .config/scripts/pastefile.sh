#!/bin/bash

if [ -z "$1" ]
then
	echo "usage: $0 [ filename ]" && exit
elif [ ! -f "$1" ]
then
	echo "\$0: File '${1}' not found." && exit
fi

filetype=$(sed 's/^.*\.//' <<< $1)

xsel -ib <<EOF
\`\`\`$filetype
$(< $1)
\`\`\`
EOF

mpv "$HOME/.config/sounds/thing.mp3" &>/dev/null &
