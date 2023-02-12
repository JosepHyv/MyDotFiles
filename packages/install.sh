#!/usr/bin/sh

echo "instalando paquetes necesarios"

echo "paquetes pacman"
sudo pacman -Syu git gcc python nodejs npm composer micro neovim xclip mysql docker docker-compose min flatpak yay obsidian unzip unrar 

echo "paquetes AUR"

yay -Syu google-chrome-stable visual-studio-code-bin superproductivity-bin 

echo "paquetes flatpak "

flatpak install spotify
flatpak install slack 
flatpak install postman 
flatpak install telegram 

echo "paquetes de la escuela"
sudo pacman -Syu dotnet-sdk mono 
yay -Syu godot-mono-bin rider bottles staruml


