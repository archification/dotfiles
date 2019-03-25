#!/bin/bash

shopt -s expand_aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

cd /etc
config add libao.conf

cd $HOME
config add .bashrc
config add .zshrc
config add note
config add .xinitrc
config add .Xmodmap

cd .config
config add compton.conf

cd nvim
config add init.vim
cd ..

cd polybar
config add config
cd ..

cd i3
config add config
cd ..

cd termite
config add config
cd ..

cd asciinema
config add config
cd ..

cd newsboat
config add config
config add urls
cd ..

cd pianobar
config add config
cd ..

cd mutt
config add muttrc
config add personal.muttrc
cd accounts
config add archification.muttrc
cd ..
cd ..

cd scripts
config add disk
config add load_average
config add lock.sh
config add dotgit.sh
config add update.sh
config add pastefile.sh
config add polybar.sh
cd ..

config commit -m 'scripted commit'
config push -u origin master
