#########  TERMINAL CONFIG  #########

. /etc/profile.d/vte.sh


#########  GIT  #########

export GPG_TTY=$(tty)


#########  OH-MY-ZSH / POWERLEVEL10K / ZSH-AUTOSUGGESTIONS  #########

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(git
    zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#########  CUSTOM ALIASES/FUNCTIONS  #########

alias lsproj="ls ~/projects"

function open() {
    if [[ $# -eq 0 ]]
    then 
        nautilus .
    else 
        nautilus $1
    fi
}