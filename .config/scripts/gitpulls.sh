#!/bin/bash

pushd $HOME/bash-it
git pull
popd

pushd agnoster-bash
git pull
popd

pushd .vim/bundle/cheat.sh-vim
git pull
popd

pushd syntastic
git pull
popd

pushd vim-surround
git pull
popd

pushd vaxe
git pull
popd

pushd vim-airline
git pull
popd

pushd vim-airline-themes
git pull
popd

pushd vim-colors-solarized
git pull
popd

exit
