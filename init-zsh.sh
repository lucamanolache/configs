DIR=$(pwd)

if [ -f "${HOME}"/.zshrc ]; then
    mv "${HOME}"/.zshrc "${HOME}"/.zshrc.bak."$(date +%m-%d-%H-%m )"
fi

ln -s "${DIR}"/.zshrc "${HOME}"/.zshrc

git clone https://github.com/ohmyzsh/ohmyzsh.git .oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp jason.zsh-theme .oh-my-zsh/custom/themes

ln -s "${DIR}"/.oh-my-zsh "${HOME}"/.oh-my-zsh
