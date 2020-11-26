#/usr/bin/env bash

source $HOME/.alias

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

DEFAULT_USER=jaster
if [[ -f $THEME ]]; then
	export DEFAULT_USER='whoami'
	source $THEME
fi

LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
set -o vi
set show-mode-in-prompt on
