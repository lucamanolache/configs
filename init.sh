DIR=$(pwd)

ln -s ${DIR}/.vimrc ~/.vimrc
ln -s ${DIR}/.zshrc ~/.zshrc

git clone https://github.com/ohmyzsh/ohmyzsh.git
ln -s ${DIR}/.oh-my-zsh ~/.oh-my-zsh

git clone https://github.com/preservim/nerdtree.git ./vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim.git ./vim/bundle/ctrlp
git clone https://github.com/sjl/gundo.vim.git ./vim/bundle/gundo
git clone https://github.com/tyrannicaltoucan/vim-deep-space.git ./vim/bundle/deep-space
git clone https://github.com/tpope/vim-sensible.git ./vim/bundle/sensible
ln -s ${DIR}/.vim ~/.vim
