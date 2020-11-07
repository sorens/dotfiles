# PATH and related things

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export GOPATH=$HOME

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export PROMPT=$'%F{blue}%~%f %#> '

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export FZF_DEFAULT_COMMAND='rg --files --hidden'

export EDITOR="~/bin/subl"

# We enable up/down arrow history search already in zsh/completion.zsh, but on
# some Linux systems, the side effect of setting `vim` as $EDITOR enables
# vi-mode temporarily, which we subsequently disable with bindkey -e, but at
# that point the damage has been done and keybindings are fucked.
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

if which rbenv > /dev/null ; then eval "$(rbenv init -)" ; fi