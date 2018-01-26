#!/bin/sh

cd zsh

sudo pacman -S - < pacman-deps

mkdir ~/.zsh > /dev/null 2>&1
cd ~/.zsh
rm -rf *

# Get custom configs
git clone https://github.com/Incand/oh-my-zsh.git oh-my-zsh
git clone https://github.com/daniel451/zsh-syntax-highlighting.git zsh-syntax-highlighting
git clone https://github.com/daniel451/zsh-autosuggestions.git oh-my-zsh/custom/plugins/zsh-autosuggestions

cp "$DIR"/zsh/zshrc ~/.zshrc

chsh -s /bin/zsh

cd "$DIR"

yaourt -S - < yaourt-deps
aurtab
