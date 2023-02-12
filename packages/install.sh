#!/usr/bin/sh

echo "installing packages"

echo "pacman packages"
sudo pacman -Syu git gcc python \
nodejs npm composer micro \ 
neovim xclip mysql docker \ 
docker-compose min flatpak \ 
yay obsidian unzip unrar \
dotnet-sdk mono

echo "AUR packages"

yay -Syu google-chrome-stable \ 
visual-studio-code-bin \ 
superproductivity-bin godot-mono-bin \
rider bottles staruml \
ungoogled-chromium 

echo "paquetes flatpak "

flatpak install spotify
flatpak install slack 
flatpak install postman 
flatpak install telegram 



