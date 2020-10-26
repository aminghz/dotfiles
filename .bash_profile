export BASH_SILENCE_DEPRECATION_WARNING=1

# Enable tab completion
source ~/.git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
cyan="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

#Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

export PS1="$purple\u$green\$(__git_ps1)$cyan \W $ $reset"

export PATH=/usr/local/bin:$PATH

function activate() {
    if [ $# -ne 1 ]
    then
        echo "activate takes exactly one argument"
    else
        source ~/venv/$1/bin/activate
    fi
}

export PATH="$HOME/.cargo/bin:$PATH"
