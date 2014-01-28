# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# highlight the selected completion (i.e. ls <tab><tab>, and then you can arrow/tab around)
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:*:*:*' menu select

# type, then arrow up/down to search through history beginning with what was typed
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
