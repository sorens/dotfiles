export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# pager
export PAGER="less -R"
export LC_CTYPE=$LANG

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Make ctrl-w delete until a word separator (and not just until it finds a space),
# among other things.
WORDCHARS=''
# Does it make sense to do the following instead? Is this any different?:
# autoload -U select-word-style
# select-word-style bash

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt AUTO_CD # allow `cd`ing by just typing the directory name

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

unsetopt MENU_COMPLETE # do not autoselect the first completion entry
setopt AUTO_MENU         # show completion menu on succesive tab press
setopt ALWAYS_TO_END

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
