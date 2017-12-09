#!/bin/sh

cd Xorg

sudo pacman -Sq - < pacman-deps

cp xinitrc ~/.xinitrc
cp xserverrc ~/.xserverrc
cp Xresources ~/.Xresources

cd "$DIR"
