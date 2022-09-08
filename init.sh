#!/bin/sh

dot_root=$(pwd);
echo $dot_root

# git
cd $dot_root/git;

ln -f -s $dot_root/git/gitconfig ~/.gitconfig;
ln -f -s $dot_root/git/gitignore ~/.gitignore;

# vim
cd $dot_root/vim;

ln -f -s $dot_root/vim/vimrc ~/.vimrc

# nvim 
cd $dot_root/nvim;

mkdir -p ~/.config/nvim;
ln -f -s $dot_root/nvim/* ~/.config/nvim/;

