#!/bin/sh

cd alsa

sudo pacman -Sq - < pacman-deps
yaourt -Sq - < yaourt-deps

cd "$DIR"
