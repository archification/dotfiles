#!/bin/env sh

echo
echo dotgit.sh
#shopt -s expand_aliases
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

cd wallpaper
config add forrest.jpg
config add flatwild.jpg
cd ..

cd .local/bin/updates
config add dotgit.sh
config add vimgit.sh
config add update.sh
cd ..

cd utility
config add compiler.sh
config add lock.sh
config add open.sh
config add opout.sh
config add polybar.sh
config add rssadd
config add texclear.sh
config add tordone
config add transadd
cd ..

cd commands
config add grabimage.sh
config add graburl.sh
config add pastefile.sh

cd $HOME/.config
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

cd mpv
config add mpv.conf
cd ..

cd zathura
config add zathurarc

cd $HOME/.local/bin/sounds
config add thing.mp3
config add upgradecomplete.mp3

cd $HOME/.local/share/applications
config add img.desktop
config add mail.desktop
config add pdf.desktop
config add rss.desktop
config add text.desktop
config add torrent.desktop

config commit -m 'scripted commit'
config push -u origin master
config push -u github master
