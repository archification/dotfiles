# ~/.config/fish/config.fish

set fish_greeting ""
fish_vi_key_bindings
set fish_plugins agnoster

set -g theme_nerd_fonts yes

alias pacaur='yay'
alias yaourt='yay'
alias nano='vim'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias path='/home/jaster/.config/scripts/path.sh'
alias macro='/home/jaster/.config/scripts/macro.sh'
alias battle='/home/jaster/.config/scripts/battle.sh'
alias pob='/home/jaster/.config/scripts/pob.sh'
alias nexus='/home/jaster/.config/scripts/nexus.sh'
alias gitfish='/home/jaster/git.fish/'
