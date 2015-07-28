autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

export PROMPT=$'%{$fg_bold[red]%}➜%{$reset_color%} %n@%m: %{$fg_bold[cyan]%}%/%{$reset_color%}\n%# '
