#!/usr/bin/env sh

set -eu
HOME=$(pwd)

echo "HOME directory"
echo $HOME

echo "Linking .hgrc"
ln -snf $HOME/dotfiles/.hgrc $HOME/.hgrc
echo "Linked"

echo "Linking .vimrc"
ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
echo "Linked"

echo "Linking .gvimrc"
ln -snf $HOME/dotfiles/.gvimrc $HOME/.gvimrc
echo "Linked"

echo "Linking .gitconfig"
ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
echo "Linked"

echo "Linking .gemrc"
ln -snf $HOME/dotfiles/.gemrc $HOME/.gemrc
echo "Linked"

#echo "Linking .vim directory"
#ln -snf $HOME/dotfiles/.vim/ $HOME/

echo "Installing NeoBundle ..."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > $HOME/install.sh
sh $HOME/install.sh
rm $HOME/install.sh
echo "Installed!"
