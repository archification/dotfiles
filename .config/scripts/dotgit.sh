#!/bin/bash

shopt -s expand_aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

pushd $HOME
config add .bashrc
config add .vimrc
config add note
config add .xinitrc
config add .Xmodmap

pushd .config
config add i3blocks.conf
config add compton.conf

pushd polybar
config add config
popd

pushd fish
config add config.fish
popd

pushd i3
config add config
popd

pushd scripts
config add disk
config add load_average
config add lock.sh
config add dotgit.sh
config add gitpulls.sh
config add update.sh
config add pastefile.sh
config add polybar.sh
popd

pushd kitty
config add kitty.conf
popd

pushd termite
config add config
popd

config commit -m 'scripted commit'
config push -u origin master
