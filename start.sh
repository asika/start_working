#!/bin/bash
set -ex

apt-get update

# install dev packages
apt-get install -y build-essential
apt-get install -y python-dev

# dev tools
apt-get install -y exuberant-ctags

# configure vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim | true
cp vim/.vimrc vim/.my_vimrc $HOME

vim -c VundleUpdate -c quitall

# install python deps
pip install -r pip/requirements.txt
