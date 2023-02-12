#!/usr/bin/sh

if [[ ! $(command -v zsh ) ]]
then 
	echo "Instalando zsh"
	sudo pacman -S zsh 
fi

if [[ ! $(command -v wget ) ]]
then 
	echo "Instalando wget"
	sudo pacman -S wget xclip
	
fi	

if [[ ! -d ~/.oh-my-zsh ]]
then 
	echo "oh my zsh no esta instalado, Instalando....."
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

cp josephy.zsh-theme ${HOME}/.oh-my-zsh/themes


