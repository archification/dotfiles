#!/usr/bin/fish

config add git.fish
config add .vimrc
config add note
config add .xinitrc
config add .Xmodmap

cd .config
config add i3blocks.conf
config add compton.conf

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
config add git.fish
config add vimplug.fish
config add discord.sh
cd ..

cd kitty
config add kitty.conf
cd ..

cd termite
config add config
cd ..

config commit -m 'scripted commit'
config push -u origin master