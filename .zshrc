# Load Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Initiate Starship promt: https://starship.rs/config/
eval "$(starship init zsh)"

# Configure ZSH
setopt HIST_SAVE_NO_DUPS
# Change zsh-autosuggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"

# Load ZSH packages
source ~/.dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.dotfiles/zsh/zsh-completions/src $fpath)

# Navigate through autosuggestion wit arrow keys
zstyle ':completion:*' menu yes select
zstyle ':completion:*:*:cd:*' menu yes select
# Make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Load addtional files
source ~/.dotfiles/.aliases
source ~/.dotfiles/.secrets
source ~/.dotfiles/.exports
source ~/.dotfiles/.functions

# Initializes the completion system.
autoload -U compinit; compinit