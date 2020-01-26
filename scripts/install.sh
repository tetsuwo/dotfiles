#!/usr/bin/env sh
#

set -eu

HOME=$(pwd)

echo "-----------------"
echo "INSTALL STARTED!"
echo "-----------------"

echo "HOME directory"
echo $HOME

ln -snf $HOME/dotfiles/.hgrc $HOME/.hgrc
echo "Linked .hgrc"

ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
echo "Linked .vimrc"

ln -snf $HOME/dotfiles/.gvimrc $HOME/.gvimrc
echo "Linked .gvimrc"

ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
echo "Linked .gitconfig"

ln -snf $HOME/dotfiles/.gemrc $HOME/.gemrc
echo "Linked .gemrc"

ln -snf $HOME/dotfiles/.bashrc $HOME/.bashrc
echo "Linked .bashrc"

#ln -snf $HOME/dotfiles/.vim/ $HOME/
#echo "Linked .vim directory"

echo "Installing  vim-plug ..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Installed vim-plug"

echo "Clean up"

echo "------------------"
echo "INSTALL COMPLETED!"
echo "------------------"
