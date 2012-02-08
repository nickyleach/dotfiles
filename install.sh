#!/bin/bash
# install.sh
# Author: Nicky Leach
# Date: February 8, 2012

cd "$(dirname "$0")"

git pull origin master
wget -q https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -O .git-completion.bash

rsync --quiet --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" --exclude "README.md" -av . ~

rm .git-completion.bash

source ~/.bash_profile