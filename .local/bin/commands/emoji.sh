#!/usr/bin/env sh

xclip -h >/dev/null || exit

chosen=$(grep -v "#" ~/.local/bin/utility/emoji | dmenu -i -l 20 -fn Mononaki-Nerd-Font-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xclip -selection clipboard
notify-send "'$c' copied to clipboard" &

s=$(echo "$chosen" | sed "s/.*; //" | awk '{print $1}')
echo "$s" | tr -d '\n' | xclip
notify-send "'$s' copied to primary" &
