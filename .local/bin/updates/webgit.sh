#!/bin/env sh

echo
echo webgit.sh
cd $HOME/website
git add .
git commit -m "scripted commit"
git push -u origin master
