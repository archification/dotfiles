#!/bin/bash

shopt -s expand_aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

cd $HOME
config add .bashrc
config add .zshrc
config add .vimrc
config add note
config add .xinitrc
config add .Xmodmap

cd .config
config add i3blocks.conf
config add compton.conf

cd polybar
config add config
cd ..

cd fish
config add config.fish
cd ..

cd i3
config add config
cd ..

cd scripts
config add disk
config add load_average
config add lock.sh
config add dotgit.sh
config add gitpulls.sh
config add update.sh
config add pastefile.sh
config add polybar.sh
cd ..

cd termite
config add config
cd ..

cd newsboat
config add config
config add urls
cd ..

config commit -m 'scripted commit'
config push -u origin master
