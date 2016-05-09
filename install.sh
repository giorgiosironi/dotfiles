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
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# tmux, Vim and such
sudo apt-get install `cat ~/dotfiles/packages.txt`

# set up Right Alt as the compose key for accented letters
# set up Caps Lock as an additional Ctrl
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt', 'ctrl:nocaps']"
# gedit creates no backup files with ~ suffix
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false

# Firefox preferences
sudo cp firefox-preferences.js /usr/lib/firefox/browser/defaults/preferences/

gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottomleft-key "<Control><Alt>1"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottom-key "<Control><Alt>2"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottomright-key "<Control><Alt>3"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-left-key "<Control><Alt>4"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-center-key "<Control><Alt>5"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-right-key "<Control><Alt>6"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-topleft-key "<Control><Alt>7"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-top-key "<Control><Alt>8"
gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-topright-key "<Control><Alt>9"
