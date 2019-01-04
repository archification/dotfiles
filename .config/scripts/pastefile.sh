#!/bin/bash
read filename
extension=$(echo $filename | sed 's/^\w\+.//')
if [ "$extension" == "sh" ];
then
	filetype=bash
elif [ "$extension" == "py" ];
then
	filetype=python
else
	filetype=text
fi
{ echo \`\`\`$filetype && cat $filename && echo \`\`\`; } | xsel -ib
mpv "$HOME/.config/sounds/thing.mp3" &>/dev/null &
