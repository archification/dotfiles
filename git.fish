#!/usr/bin/fish

config add git.fish
config add .vimrc
config add note

cd .config
config add i3blocks.conf

cd fish
config add config.fish

cd ..
cd i3
config add config

cd ..
cd scripts
config add disk
config add load_average

cd ..
cd termite
config add config

config commit -m 'scripted commit'
config push -u origin master
