#!/bin/sh

cd alsa

sudo pacman -S - < pacman-deps
yaourt -S - < yaourt-deps

cd "$DIR"
