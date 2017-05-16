# PATH and related things

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export GOPATH=$HOME

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export PROMPT=$'%# '

# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  export EDITOR='vim'
fi

# FFFFFUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
# Setting $EDITOR to 'vim' changes zsh's keybindings! WHAT THE HELL.
# `bindkey -e` sets us back to the standard keybindings mode (which is more
# like emacs).
bindkey -e

if which rbenv > /dev/null ; then eval "$(rbenv init -)" ; fi
