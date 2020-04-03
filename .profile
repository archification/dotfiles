#!/bin/sh
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export MSF_DATABASE_CONFIG=$HOME/.msf4/database.yml
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export READER="zathura"
