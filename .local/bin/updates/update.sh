#!/bin/env sh

yay -Syu
dotgit.sh
rustup update

cd $HOME/.config/nvim/bundle
dirs=`ls -1d */`
for d in $dirs
do
    echo `cd $d; git pull`
done

#find . -maxdepth 1 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
#find . -maxdepth 1 -name .git -type d \
#    | rev \
#    | cut -c 6- \
#    | rev \
#    | xargs -I {} git -C {} pull
notify-send -u low \
    "updates" \
    "They're done." \
    -i $HOME/pictures/avatars/arch.png
mpv --volume 50 --really-quiet "$HOME/.local/bin/sounds/upgradecomplete.mp3" &
disown && exit
