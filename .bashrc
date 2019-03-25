#/usr/bin/env bash

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

alias update='/home/jaster/.config/scripts/update.sh'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='lsd'
alias h='htop'
alias H='htop'
alias g='gtop'
alias G='gtop'
alias pacaur='yay'
alias yaourt='yay'
alias nano='nvim'
alias emacs='nvim'
alias mine='cd $HOME/mine && java -jar server.jar --nogui'
alias share='$HOME/.config/scripts/pastefile.sh'
alias f='flask run --host=0.0.0.0'
alias z='nmap -sV --script=vulscan/vulscan.nse'
