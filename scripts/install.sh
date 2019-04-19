#!/usr/bin/env sh
#

set -eu

HOME=$(pwd)

echo "HOME directory"
echo $HOME

ln -snf $HOME/dotfiles/.hgrc $HOME/.hgrc
echo "Linked .hgrc"

ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
echo "Linked .vimrc"

ln -snf $HOME/dotfiles/.gvimrc $HOME/.gvimrc
echo "Linked .gvimrc"

ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
echo "Linked.gitconfig"

ln -snf $HOME/dotfiles/.gemrc $HOME/.gemrc
echo "Linked .gemrc"

#ln -snf $HOME/dotfiles/.vim/ $HOME/
#echo "Linked .vim directory"

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > $HOME/install.sh
echo "Installed  NeoBundle ..."

sh $HOME/install.sh
rm $HOME/install.sh
echo "Clean up"

echo "------------------"
echo "INSTALL COMPLETED!"
echo "------------------"
