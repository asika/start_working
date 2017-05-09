#!/bin/bash
set -ex

apt-get update

# install esssential tools
apt-get install -y screen
apt-get install -y vim 

# install dev packages
apt-get install -y build-essential
apt-get install -y python-dev
apt-get install -y default-jre

# dev tools
apt-get install -y exuberant-ctags
apt-get install -y htop 

# configure vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim | true
cp vim/.vimrc vim/.my_vimrc $HOME

vim -c VundleUpdate -c quitall

# install python deps
pip install --upgrade pip
pip install -r pip/requirements.txt

cp .screenrc $HOME
