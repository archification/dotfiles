#!/usr/bin/env bash

export BASH_IT="/home/jaster/bash-it"
export BASH_IT_THEME='/home/jaster/agnoster-bash/agnoster.bash'
set -o vi
set show-mode-in-prompt on
export GIT_HOSTING='git@gitlab.com'
unset MAILCHECK
export IRC_CLIENT='irssi'
export TODO="t"
export SCM_CHECK=true
export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
source "$BASH_IT"/bash_it.sh
alias update='/home/jaster/.config/scripts/update.sh'
alias h='htop'
alias g='gtop'
alias pacaur='yay'
alias yaourt='yay'
alias nano='vim'
alias emacs='vim'
alias discord='/home/jaster/.config/scripts/discord.sh'
alias mine='cd /home/jaster/mine && java -jar server.jar --nogui'
