#!/bin/env sh

cd $HOME/.config/nvim/bundle
dirs=`ls -1d */`
for d in $dirs
do
    echo $d
    echo '======================'
    IFS=$'\n' lines=($(cd $d; git pull))
    for l in $lines
    do
        echo $l
    done
done
