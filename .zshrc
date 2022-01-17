# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# if the init script doesn't exist
if ! zgenom saved; then
    echo "Creating a zgenom save"

    # Ohmyzsh base library
    zgenom ohmyzsh

    zgenom ohmyzsh plugins/git
    zgenom ohmyzsh plugins/sudo
    zgenom ohmyzsh plugins/web-search
    zgenom ohmyzsh plugins/copydir
    zgenom ohmyzsh plugins/copybuffer
    zgenom ohmyzsh plugins/copyfile
    zgenom ohmyzsh plugins/history
    # just load the completions
    zgenom ohmyzsh --completion plugins/docker-compose
    zgenom ohmyzsh plugins/zsh-aliases-exa

    # prezto options
    #zgenom prezto editor key-bindings 'emacs'

	#zsh-users/zsh-completions
    # bulk load
    zgenom loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
	zsh-users/zsh-autosuggestions
	hlissner/zsh-autopair
	zsh-users/zsh-syntax-highlighting
	romkatv/powerlevel10k powerlevel10k
	esc/conda-zsh-completion
EOPLUGINS
    # add binaries
    zgenom bin tj/git-extras

    # completions
    zgenom load 

    # save all to init script
    zgenom save

    # Compile your zsh files
    zgenom compile "$HOME/.zshrc"
    zgenom compile $ZDOTDIR
fi

eval "$(zoxide init zsh)"
alias cd=z
alias ci=zi
alias vim=nvim
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$PATH:/home/luca/.cargo/bin"

# EXA
# general use
alias ls='exa'                                                          # ls
alias l='exa -lbF --git'                                                # list, size, type, git
alias ll='exa -lbFa --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --git --color-scale' # all + extended list

# BAT
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

alias fp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

function preview () {
  curl -s $1 | bat
}

# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'                                         # tree

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
(( ! ${+functions[p10k]} )) || p10k finalize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/luca/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/luca/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/luca/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/luca/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

