source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(background_jobs ssh dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode)
POWERLEVEL9K_IGNORE_TERM_COLORS=true

HISTFILE=~/.histfile
HISTSIZE=250
SAVEHIST=250
bindkey -v

export FLASK_APP=$HOME/thing/thing.py
# export FLASK_DEBUG=1

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
alias tb='nc termbin.com 9999 | xsel -ib'
alias m='neomutt'
alias mine='cd $HOME/mine && java -jar server.jar --nogui'
alias share='pastefile.sh'
alias f='flask run --host=0.0.0.0'
alias z='nmap -sV --script=vulscan/vulscan.nse'
alias msfconsole="msfconsole --quiet -x \"db_connect msf@msf\""
alias n='ncpamixer'
alias p='pianobar | lolcat'
alias rr='cargo run'
alias ru='rustup update && cargo update'
alias r='cd /home/jaster/wut/rs/thing && cargo run'
alias dl='transmission-remote-cli'
alias thing='cd $HOME/latex && pdflatex thing.tex'
