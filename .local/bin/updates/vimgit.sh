#!/bin/env sh

echo
cd $HOME/.config/nvim/bundle
dirs=`ls -1d */`
for d in $dirs
do
    echo $d
    IFS=$'\n' lines=($(cd $d; git config --get remote.origin.url; git pull))
    for l in $lines
    do
        echo $l
    done
    echo '======================'
done
