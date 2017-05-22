#!/bin/bash
mkdir -p ~/bin
git config --global core.editor vim

git submodule update -i
rm -rf ~/.vim
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.inputrc ~/.inputrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# tmux, Vim and such
sudo apt-get -y install `cat ~/dotfiles/packages.txt`

if [ ! -e ~/bin/hub ]; then
    wget -c https://github.com/github/hub/releases/download/v2.2.9/hub-linux-amd64-2.2.9.tgz
    tar zvxf hub-linux-amd64-2.2.9.tgz
    ln -sf ~/dotfiles/hub-linux-amd64-2.2.9/bin/hub ~/bin/hub
fi


if which gdm; then
    sudo apt-get -y install `cat ~/dotfiles/packages-gui.txt`

    # Firefox preferences
    sudo cp firefox-preferences.js /usr/lib/firefox/browser/defaults/preferences/

    # set up Right Alt as the compose key for accented letters
    # set up Caps Lock as an additional Ctrl
    gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt', 'ctrl:nocaps']"
    # gedit creates no backup files with ~ suffix
    gsettings set org.gnome.gedit.preferences.editor create-backup-copy false
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottomleft-key "<Control><Alt>1"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottom-key "<Control><Alt>2"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-bottomright-key "<Control><Alt>3"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-left-key "<Control><Alt>4"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-center-key "<Control><Alt>5"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-right-key "<Control><Alt>6"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-topleft-key "<Control><Alt>7"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-top-key "<Control><Alt>8"
    gsettings set org.compiz.grid:/org/compiz/profiles/unity/plugins/grid/ put-topright-key "<Control><Alt>9"

    ln -fs ~/dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs
    xdg-user-dirs-update
fi
