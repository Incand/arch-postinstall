#!/bin/sh

cd networkmanager

sudo pacman -Sq - < pacman-deps

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

cd "$DIR"
