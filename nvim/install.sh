#!/bin/bash

sudo pacman -Sq - < pacman-deps

mkdir ~/.config/nvim

if [[ ! -d ~/.config/nvim/bundle ]]; then
    echo "Getting Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
fi

if [[ ! -d ~/.local/share/nvim/plugged ]]; then
    echo "Gettung vimplug..."
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Copying init.vim..."
cp -r ./init* ~/.config/nvim/

echo "Installing Vundle plugins..."
nvim +PluginInstall +qall

echo "Installing vim-plug plugins..."
nvim +PlugInstall +qall
