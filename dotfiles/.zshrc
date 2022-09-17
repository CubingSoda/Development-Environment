ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    zsh-autosuggestions
)

export ZSH="$HOME/.oh-my-zsh"


source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh

eval $(/opt/homebrew/bin/brew shellenv)

alias python=python3
alias pip=pip3
alias yarnpkg='cat /Users/cubingsoda/.config/yarn/global/package.json'
alias clear="printf '\33c\e[3J'"

export PATH=$PATH:/Users/cubingsoda/Library/Python/3.8/bin
export PATH="$PATH:$(yarn global bin)"

printf '\33c\e[3J'