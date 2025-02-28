# PATH and related things

export PATH="$HOME/bin:/opt/homebrew/bin:$PATH"
export PATH=$ZSH/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/bin:$PATH
export PATH=/sbin:$PATH
export PATH=$HOME/src/bin:$PATH

export GOPATH="$HOME/src"

export MANPATH="/opt/homebrew/share/man:$MANPATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export PROMPT=$'%F{blue}%~%f %#> '

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export FZF_DEFAULT_COMMAND='rg --files --hidden'

export EDITOR="/usr/local/bin/code"

# opt out of homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

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
if which mise > /dev/null ; then eval "$(mise activate -qs zsh)" ; fi
if [ -f "$HOME/.cargo/env" ] ; then . "$HOME/.cargo/env" ; fi
ssh-add --apple-load-keychain