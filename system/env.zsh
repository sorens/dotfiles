# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  export EDITOR='vim'
fi

# FFFFFUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
# Setting $EDITOR to 'vim' changes zsh's keybindings! WHAT THE HELL.
# `bindkey -e` sets us back to the standard keybindings mode (which is more
# like emacs).
bindkey -e
