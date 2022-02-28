#########  TERMINAL CONFIG  #########

cd ~

# WSL2 Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# emulate bash PROMPT_COMMAND (only for zsh)
precmd() { eval "$PROMPT_COMMAND" }

# open new terminal in same dir
PROMPT_COMMAND='pwd > "${HOME}/.cwd"'
[[ -f "${HOME}/.cwd" ]] && cd "$(< ${HOME}/.cwd)"

#########  GIT  #########

export GPG_TTY=$(tty)


#########  OH-MY-ZSH / POWERLEVEL10K / ZSH-AUTOSUGGESTIONS  #########

export ZSH="$HOME/.oh-my-zsh"

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

