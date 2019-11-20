#!/bin/env sh

basename="$(echo "$1" | sed 's/\.[^\/.]*$//')"

case "$1" in
	*.tex|*.md|*.rmd|*.ms|*.me|*.mom) setsid "$READER" "$basename".pdf >/dev/null 2>&1 & ;;
	*.html) setsid "$BROWSER" --new-window "$basename".html >/dev/null 2>&1 & ;;
	*.sent) setsid sent "$1" >/dev/null 2>&1 & ;;
esac
