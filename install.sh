#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

sudo pacman -Syyuq

echo "Installing yaourt..."
. yaourt/install.sh

echo "Installing Xorg display server..."
. Xorg/install.sh

echo "Installing i3 window manager..."
. i3/install.sh

echo "Installing etc files..."
. etc/install.sh

echo "Installing NetworkManager..."
. networkmanager/install.sh

echo "Installing zsh shell..."
. zsh/install.sh

echo "Installing alsa sound driver and pulseaudio..."
. alsa/install.sh

echo "Installing misc packages"
sudo pacman -Sq --needed - < pacman-deps
