#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
setxkbmap -option caps:escape
xset s off
xset -dpms
exec dbus-launch i3
