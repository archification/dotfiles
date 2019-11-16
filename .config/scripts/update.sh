#!/bin/bash

yay -Syu
dotgit.sh
cd $HOME/.config/nvim/bundle
find . -maxdepth 1 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull
# python3 install.py --cs-completer --go-completer --rust-completer --java-completer
mpv --really-quiet "$HOME/.config/sounds/upgradecomplete.mp3" &
disown && exit
