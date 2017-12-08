#!/bin/sh

echo "Enabling pacman multilib repo..."
cp pacman.conf /etc/pacman.conf

echo "Updating system..."
pacman -Syyuq

echo "Installing packages from requirements.txt..."
pacman -Sq --needed - < requirements.txt

echo "Setting up sudo..."
cp sudoers /etc/sudoers

echo "Provide your username!"
read name
#useradd -m -G wheel -s /bin/bash "$name"
passwd "$name"

echo "Changing shell of $name to zsh..."
chsh -s /bin/zsh "$name"

home=/home/"$name"

echo "Setting up Xorg server and i3..."
cp xserverrc "$home"/.xserverrc
cp xinitrc "$home"/.xinitrc
cp profile /etc/profile

echo "Setting up urxvt font and colors..."
cp Xresources "$home"/.Xresources

echo "Setting up yaourt..."
sudo -u "$name" ./install-yaourt.sh
