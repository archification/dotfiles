#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
xset s off
xset -dpms
exec i3
sleep 10
echo "Welcome home" | festival --tts
