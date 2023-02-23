#!/bin/sh
dot_root=$(pwd);

# git
cd "$dot_root/git" || exit;


ln -f -s "$dot_root/git/gitconfig" ~/.gitconfig;
ln -f -s "$dot_root/git/gitignore" ~/.gitignore;

# vim
cd "$dot_root/vim" || exit;
ln -f -s "$dot_root/vim/vimrc" ~/.vimrc


# nvim 
cd "$dot_root/nvim" || exit;
# see: https://nvchad.com/quickstart/install
rm -rf ~/.local/share/nvim;
rm -rf ~/.config/nvim;
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1;
ln -f -s "$dot_root/nvim/nvchad/custom" ~/.config/nvim/lua/custom;

# alacritty
rm -rf ~/.config/alacritty;
mkdir ~/.config/alacritty;
cp "$dot_root/alacritty/alacritty.yml" ~/.config/alacritty/alacritty.yml

# mkdir -p ~/.config/nvim;
# ln -f -s $dot_root/nvim/* ~/.config/nvim/;

# profile
## alias
_http_proxy="localhost:1087"
echo "alias proxyon='export http_proxy=$_http_proxy https_proxy=$_http_proxy HTTP_PROXY=$_http_proxy HTTPS_PROXY=$_http_proxy'" >> ~/.profile
echo "alias proxyoff='unset https_proxy; unset http_proxy; unset http_proxy; unset HTTP_PROXY; unset HTTPS_PROXY'" >> ~/.profile

