#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
xset s off
xset -dpms
exec i3
