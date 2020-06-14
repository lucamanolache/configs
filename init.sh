DIR=$(pwd)

ln -s "${DIR}"/.vimrc "${HOME}"/.vimrc
ln -s "${DIR}"/.zshrc "${HOME}"/.zshrc

git clone https://github.com/ohmyzsh/ohmyzsh.git .oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp jason.zsh-theme .oh-my-zsh/themes/jason.zsh-theme
ln -s "${DIR}"/.oh-my-zsh "${HOME}"/.oh-my-zsh

git clone https://github.com/preservim/nerdtree.git .vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim.git .vim/bundle/ctrlp
git clone https://github.com/sjl/gundo.vim.git .vim/bundle/gundo
git clone https://github.com/tyrannicaltoucan/vim-deep-space.git .vim/bundle/deep-space
git clone https://github.com/tpope/vim-sensible.git .vim/bundle/sensible
ln -s "${DIR}"/.vim "${HOME}"/.vim

source "${HOME}"/.zshrc
