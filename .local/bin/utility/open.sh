#!/bin/env sh

[ -z "$1" ] && { "$BROWSER"; exit; }

case "$1" in
    *mkv|*webm|*mp4|*youtube.com/watch*|*youtube.com/playlist*|*youtu.be*|*hooktube.com*|*bitchute.com*)
        setsid mpv --volume=50 --input-ipc-server=/tmp/mpvsoc$(date +%s) -quiet "$1" >/dev/null 2>&1 & ;;
    *png|*jpg|*jpe|*jpeg|*gif)
        curl -sL "$1" > "/tmp/$(echo "$1" | sed "s/.*\///")" && sxiv -a "/tmp/$(echo "$1" | sed "s/.*\///")" >/dev/null 2>&1 & ;;
    *mp3|*flac|*opus|*mp3?source*)
        setsid tsp curl -LO "$1" >/dev/null 2>&1 & ;;
    *)
        if [ -f "$1" ]; then "$TERMINAL" -e "$EDITOR $1"
        else setsid $BROWSER "$1" >/dev/null 2>&1 & fi ;;
esac
