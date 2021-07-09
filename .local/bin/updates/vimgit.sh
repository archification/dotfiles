#!/usr/bin/env sh

echo
echo vimgit.sh
cd $HOME/.config/nvim/bundle
#dirs=`ls -1d */`
for d in */
do
    echo $d
    IFS=$'\n' lines=($(cd $d; git config pull.rebase false; git config --get remote.origin.url; git pull))
    for l in $lines
    do
        echo $l
    done
    echo '======================'
done
