#!/bin/bash
git submodule update -i
rm ~/.vim
ln -s ~/dotfiles/.vim ~/.vim
rm ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
rm ~/.inputrc
ln -s ~/dotfiles/.inputrc ~/.inputrc
sudo apt-get install tmux
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
