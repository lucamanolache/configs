Running init.sh will clone all of the needed git repos and move them into your home directory.
Running the init-vim.sh command will only install the vimrc and vim plugins.
Running the init-zsh.sh command will only install the zshrc and zsh plugisn.
To check if zsh is your default shell run echo $SHELL and the result should be similar to /usr/bin/zsh. If not you can set zsh as your default shell run the command run chsh -s $(which zsh). If you do not have zsh installed you can install it using your default package manager, ex. sudo apt install zsh.
