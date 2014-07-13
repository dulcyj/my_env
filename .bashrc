#### 
# Personal .bashrc
# date : 03/04/2014
#

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

## Alias
alias ll="ls -lah"

# User specific aliases and functions
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

function go(){
    if [ -f /usr/bin/screen ];
    then
        screen -t $1 ssh $1
    else
        ssh $1
fi
}

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

alias lg1="git log --graph --abbrev-commit --decorate --date=relative \
--format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) \
%C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' \
--all"
alias git-root='cd $(git rev-parse --show-cdup)'

#### Prompt
c_yell='\[\e[00;33m\]'
c_reset='\[\e[0m\]'
c_white='\[\e[00;37m\]'
c_blue='\[\e[00;36m\]'

PROMPT_COMMAND='PS1="${c_yell}\u${c_reset}${c_white}@\h:${c_reset}${c_blue}[\w]${c_reset}${c_white}$(__git_ps1)${c_reset}: "'
