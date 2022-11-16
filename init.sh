#!/bin/sh
dot_root=$(pwd);

# git
cd $dot_root/git;
ln -f -s $dot_root/git/gitconfig ~/.gitconfig;
ln -f -s $dot_root/git/gitignore ~/.gitignore;

# vim
cd $dot_root/vim;
ln -f -s $dot_root/vim/vimrc ~/.vimrc


# nvim 
cd $dot_root/nvim;
# see: https://nvchad.com/quickstart/install
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
ln -f -s $dot_root/nvim/nvchad/custom ~/.config/nvim/lua/custom;

# mkdir -p ~/.config/nvim;
# ln -f -s $dot_root/nvim/* ~/.config/nvim/;

