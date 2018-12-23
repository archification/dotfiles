# ~/.config/fish/config.fish

set fish_greeting ""
fish_vi_key_bindings
set fish_plugins agnoster
set -g theme_nerd_fonts yes

alias h='htop'
alias H='htop'
alias g='gtop'
alias G='gtop'
alias pacaur='yay'
alias yaourt='yay'
alias nano='vim'
alias emacs='vim'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias update='/home/jaster/.config/scripts/update.fish'
alias what='/home/jaster/.config/scripts/vimplug.fish'
alias discord='/home/jaster/.config/scripts/discord.sh'
alias something='/home/jaster/.config/scripts/git.fish'
alias mine='java -jar /home/jaster/mine/server.jar --nogui'
