#!/bin/bash
# install.sh
# Author: Nicky Leach
# Date: February 8, 2012

cd "$(dirname "$0")"

git pull origin master
wget -q https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -O .git-completion.bash
wget -q https://raw.github.com/altercation/solarized/master/osx-terminal.app-colors-solarized/Solarized%20Dark%20ansi.terminal -O Solarized\ Dark.terminal

rsync --quiet --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" --exclude "README.md" -av . ~

rm .git-completion.bash Solarized\ Dark.terminal

source ~/.bash_profile

cd ~ 
open Solarized\ Dark.terminal
defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Dark"
defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Dark"