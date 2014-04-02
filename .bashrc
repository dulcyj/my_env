


export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\h:\[\e[0m\]\[\e[00;36m\][\w]:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"


#Git related
cd to top root of git repo
alias git-root='cd $(git rev-parse --show-cdup)'
alias lg1="git log --graph --abbrev-commit --decorate --date=relative \
--format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) \
%C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' \
--all"
