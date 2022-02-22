#!/bin/bash

# expects you to be in home directory

echo "installing binaries"
sudo pacman -S xorg-server xorg-xinit libxft libxinerama alacritty gnu-free-fonts ttf-ubuntu-font-family pcmanfm neofetch vim noto-fonts-cjk htop iwd dhcpcd go alsa-utils feh

echo "cloning repositories"
git clone https://github.com/sahilMujadedi/dwm
git clone https://github.com/sahilMujadedi/dmenu
git clone https://github.com/sahilMujadedi/slstatus

echo "removing bad files and replacing with good ones"
rm -r .Xresources .bashrc .xinitrc Wallpapers/ startup.sh
cp -r linux-config-files/. .

echo "compiling gui things.."
cd dwm
make clean install

cd ../dmenu
make clean install

cd ../slstatus
make clean install
