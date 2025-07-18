# PATH and related things

if [ -d /opt/homebrew/bin ] ; then
    export PATH="/opt/homebrew/bin:$PATH"
    export MANPATH="/opt/homebrew/share/man:$MANPATH"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/src/bin" ] ; then
    export PATH="$HOME/src/bin:$PATH"
fi

if [ -d "/usr/local/sbin" ] ; then
    export PATH="/usr/local/sbin:$PATH"
fi

if [ -d /usr/local/MacGPG2/bin ] ; then
    export PATH="${PATH/\/usr\/local\/MacGPG2\/bin:/}"
    export PATH="/usr/local/MacGPG2/bin:$PATH"
fi

export GOPATH="$HOME/src"

export PROMPT=$'%F{blue}%~%f %#> '

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export FZF_DEFAULT_COMMAND='rg --files --hidden'

export EDITOR="/usr/local/bin/zed"
# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  export EDITOR='zed'
fi

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

if which mise > /dev/null ; then eval "$(mise activate -qs zsh)" ; fi
if [ -f "$HOME/.cargo/env" ] ; then . "$HOME/.cargo/env" ; fi
ssh-add --apple-load-keychain
