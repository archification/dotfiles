export PATH="$PATH:$(du "$HOME/.config/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export MSF_DATABASE_CONFIG=$HOME/.msf4/database.yml
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="open.sh"
export READER="zathura"
