#!/bin/bash
read filename
extension=$(echo $filename | sed 's/^\w\+.//')
echo $extension
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
