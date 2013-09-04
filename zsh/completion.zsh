# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# highlight the selected completion (i.e. ls <tab><tab>, and then you can arrow/tab around)
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:*:*:*' menu select
