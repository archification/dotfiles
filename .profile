export PATH="$PATH:$(du "$HOME/.config/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER=$HOME/.config/scripts/open.sh
export READER="zathura"
