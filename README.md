![Docker Image CI](https://github.com/NotLucaM/configs/workflows/Docker%20Image%20CI/badge.svg)

# Installation

Running ```./init.sh``` will clone all of the needed git repos and move them into your home directory using symbolic links.

Running ```./init-vim.sh``` will only install the vimrc and vim plugins.
Running ```init-zsh.sh``` will only install the zshrc and zsh plugisn.

# Zsh

To check if zsh is your default shell run ```echo $SHELL``` and the result should be similar to ```/usr/bin/zsh```. If not you can set zsh as your default shell run the command run ```chsh -s $(which zsh)```. If you do not have zsh installed you can install it using your default package manager, ex. ```sudo apt install zsh```.
