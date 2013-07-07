#!/bin/bash
git submodule update -i
rm ~/.vim
ln -s ~/dotfiles/.vim ~/.vim
rm ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

