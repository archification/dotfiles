#!/bin/env sh

echo
echo webgit.sh
cd $HOME/website
git add -A
git commit -m "scripted commit"
git push -u origin master
