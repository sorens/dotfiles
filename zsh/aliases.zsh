if [[ "$(uname -s)" == "Linux" ]] ; then
    alias ls="ls -F --color"
else
    alias ls="ls -F"
fi
alias l="ls -lAh"
alias ll="ls -al"
alias la="ls -A"
alias ..='cd ..'
alias tree='tree -C'

alias reload!='. ~/.zshrc'
alias workspace='cd ~/src'

alias tf='terraform'

if which nvim 2>&1 > /dev/null ; then
    alias vim='nvim'
fi

# git
alias g='git'
alias ga='git add'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -am'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gcp='git cherry-pick'
alias glp='git log --oneline --decorate'
alias gsu='git submodule'
alias gf='git fetch'
alias gfp='git format-patch'
alias gse='git send-email'
alias gsr='git svn rebase'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias gcs="git show --show-signature"
alias gdh="git diff HEAD"

alias space='cd ~/src/github.com/sorens/spacex'
