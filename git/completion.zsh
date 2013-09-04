# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $completion
then
  source $completion
fi

compdef g=git
compdef _git ga=git-add
compdef _git gl=git-pull
compdef _git gp=git-push
compdef _git gd=git-diff
compdef _git gc=git-commit
compdef _git gca=git-commit
compdef _git gcam=git-commit
compdef _git gco=git-checkout
compdef _git gb=git-branch
compdef _git gs=git-status
compdef _git gcp=git-cherry-pick
compdef _git glp=git-log
compdef _git gsu=git-submodule
compdef _git gf=git-fetch
compdef _git gfp=git-format-patch
compdef _git gse=git-send-email

zstyle ':completion:*' users ''
__git_files () {
    _wanted files expl 'local files' _files
}
