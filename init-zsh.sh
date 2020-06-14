DIR=$(pwd)

ln -s ${DIR}/.zshrc ~/.zshrc

git clone https://github.com/ohmyzsh/ohmyzsh.git .oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/custom/plugins/zsh-syntax-highl    ighting
mv jason.zsh-theme oh-my-zsh/custom/themes
ln -s ${DIR}/.oh-my-zsh ~/.oh-my-zsh
