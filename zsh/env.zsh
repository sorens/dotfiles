# PATH and related things

if [ -d /opt/homebrew/bin ] ; then
    export PATH="/opt/homebrew/bin:$PATH"
    export MANPATH="/opt/homebrew/share/man:$MANPATH"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d /usr/local/MacGPG2/bin ] ; then
    export PATH="${PATH/\/usr\/local\/MacGPG2\/bin:/}"
    export PATH="/usr/local/MacGPG2/bin:$PATH"
fi

export GOPATH="$HOME"

export PROMPT=$'%# '

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  export EDITOR='vim'
fi

# FFFFFUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
# Setting $EDITOR to 'vim' changes zsh's keybindings! WHAT THE HELL.
# `bindkey -e` sets us back to the standard keybindings mode (which is more
# like emacs).
bindkey -e

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
