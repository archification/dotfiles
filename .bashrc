#/usr/bin/env bash

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

#export BASH_IT="/home/jaster/bash-it"
#export BASH_IT_THEME='/home/jaster/agnoster-bash/agnoster.bash'
DEFAULT_USER=jaster
#if [[ -f $THEME ]]; then
#	export DEFAULT_USER='whoami'
#	source $THEME
#fi
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
set -o vi
set show-mode-in-prompt on
unset MAILCHECK
export IRC_CLIENT='weechat'
export TODO="t"
export SCM_CHECK=true
export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
#source "$BASH_IT"/bash_it.sh
alias update='/home/jaster/.config/scripts/update.sh'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias h='htop'
alias g='gtop'
alias pacaur='yay'
alias yaourt='yay'
alias nano='vim'
alias emacs='vim'
alias discord='/home/jaster/.config/scripts/discord.sh'
alias mine='cd /home/jaster/mine && java -jar server.jar --nogui'
