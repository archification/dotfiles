#!/usr/bin/env sh

echo
echo dotgit.sh
#shopt -s expand_aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config git remote -v

cd $HOME
config add .bashrc
config add .zshrc
config add .alias
config add .p10k.zsh
config add note
config add .profile
config add .zprofile
config add .bash_profile

cd $HOME/.local/bin/updates
config add dotgit.sh
config add vimgit.sh
config add update.sh

cd ../utility
config add compiler.sh
config add lock.sh
config add open.sh
config add opout.sh
config add polybar.sh
config add rssadd
config add texclear.sh
config add tordone
config add transadd
config add emoji

cd ../commands
config add grabimage.sh
config add graburl.sh
config add pastefile.sh
config add emoji.sh
config add cross.sh
config add ydl

cd $HOME/.config
config add mimeapps.list
config add picom.conf
config add libao.conf

cd rofi
config add rofi.rasi

cd ../nvim
config add init.vim

cd ../polybar
config add config

cd ../i3
config add config

cd ../termite
config add config

cd ../alacritty
config add alacritty.yml

cd ../dunst
config add dunstrc

cd ../flashfocus
config add flashfocus.yml

cd ../qutebrowser
config add config.py

cd ../mpv
config add mpv.conf

cd $HOME/.local/bin/sounds
config add thing.mp3
config add upgradecomplete.mp3

config commit -m 'scripted commit'
config push -u origin master
config push -u github master
