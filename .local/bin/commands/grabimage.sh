#!/bin/env sh

#dir=~/opt/Screenshots/maim
#name="maim-$(date +%F_%H:%M:%S)"
#dn="$dir/$name.png"

#mkdir -p "$dir" || exit 1

#case $1 in
#	-f) maim -ui $(xdotool getactivewindow) "$dn";;
#	-s) maim -su -b 8 "$dn";;
#	*) maim -u "$dn";;
#esac

#name1="$name-$(file "$dn" | \
#	awk '{gsub(",","")} {print $5 "x" $7}')" &&
#dn1="$dir/$name1.png" &&
#mv "$dn" "$dn1" || exit

#preview "$dn1"
#notify-send "pic taken"

maim -su | xclip -selection clipboard -t image/png -i
notify-send "pic taken"
mpv "$HOME/.local/bin/sounds/thing.mp3" &
disown && exit
