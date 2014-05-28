#!/bin/bash

cd $(dirname "$0")

link(){
    if [ ! -h $HOME/.$1 ]; then
        ln -s "`pwd`/$1" "$HOME/.$1"
    fi
}

echo "init vim ...."
if [ ! -d vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git vim/bundle/vundle
fi
link vim
link vimrc
vim +BundleInstall +qall

echo "init zsh ...."
link zshrc

echo "init gitconfig ...."
link gitconfig
