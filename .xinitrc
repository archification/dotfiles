#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
xset s off
exec i3
