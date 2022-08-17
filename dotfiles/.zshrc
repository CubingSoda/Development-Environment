export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.p10k.zsh

eval $(/opt/homebrew/bin/brew shellenv)
