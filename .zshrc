if [[ `tput colors` == "256" ]]; then
    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
    # Initialization code that may require console input (password prompts, [y/n]
    # confirmations, etc.) must go above this block; everything else may go below.
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi

    source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

fi

# Preferred editor

export EDITOR='vi'

# Plugins

source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/history.zsh
# source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz  compinit  #Basic auto/tab complete:  
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select  
zmodload zsh/complist  
compinit  
_comp_options+=(globdots)		# Include hidden files. 

# Aliases
source ~/.config/zsh/aliases.zsh

# Vim keybinds
bindkey -v

if [[ `tput colors` == "256" ]]; then
    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi
