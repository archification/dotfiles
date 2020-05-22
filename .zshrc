source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.alias
source $HOME/.dbot
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

HISTFILE=~/.histfile
HISTSIZE=250
SAVEHIST=250
bindkey -v
