#!/bin/sh

cd i3

sudo pacman -S - < pacman-deps
yaourt -S - < yaourt-deps

mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status

cp i3-config ~/.config/i3/config
cp i3-status-config ~/.config/i3status/config

cd "$DIR"
