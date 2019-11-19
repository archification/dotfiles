#!/bin/bash

shopt -s expand_aliases
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

cd $HOME
config add .bashrc
config add .zshrc
config add .alias
config add .p10k.zsh
config add note
config add .xinitrc
config add .Xmodmap
config add .profile
config add .zprofile
config add .bash_profile
config add .inputrc

cd .config
config add compton.conf
config add libao.conf

cd rofi
config add rofi.rasi
cd ..

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

cd alacritty
config add alacritty.yml
cd ..

cd dunst
config add dunstrc
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
cd ..

cd qutebrowser
config add config.py
cd ..

cd scripts
config add tordone
config add transadd
config add rssadd
config add lock.sh
config add dotgit.sh
config add update.sh
config add pastefile.sh
config add polybar.sh
config add open.sh
config add grabimage.sh
config add graburl.sh
config add compiler.sh
config add opout.sh
config add texclear.sh
cd ..

cd sounds
config add thing.mp3
config add upgradecomplete.mp3
cd

cd $HOME/.local/share/applications
config add img.desktop
config add mail.desktop
config add pdf.desktop
config add rss.desktop
config add text.desktop
config add torrent.desktop

config commit -m 'scripted commit'
config push -u origin master
