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

# tmux, Vim and such
sudo apt-get install `cat ~/dotfiles/packages.txt`
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# set up Right Alt as the compose key for accented letters
# set up Caps Lock as an additional Ctrl
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt', 'ctrl:nocaps']"
# gedit creates no backup files with ~ suffix
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false

# Firefox preferences
sudo cp firefox-preferences.js /usr/lib/firefox/browser/defaults/preferences/

gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-right-key <Control><Alt>6
