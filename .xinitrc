#!/bin/sh

xrdb -merge $HOME/.Xresources
xmodmap $HOME/.Xmodmap
exec i3
