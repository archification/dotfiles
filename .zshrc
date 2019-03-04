source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(background_jobs ssh dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode)

HISTFILE=~/.histfile
HISTSIZE=250
SAVEHIST=250
bindkey -e

alias update='/home/jaster/.config/scripts/update.sh'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='lsd'
alias h='htop'
alias H='htop'
alias g='gtop'
alias G='gtop'
alias pacaur='yay'
alias yaourt='yay'
alias nano='vim'
alias emacs='vim'
alias mine='cd $HOME/mine && java -jar server.jar --nogui'
alias share='$HOME/.config/scripts/pastefile.sh'
alias dis='flatpak run com.discordapp.Discord &'
