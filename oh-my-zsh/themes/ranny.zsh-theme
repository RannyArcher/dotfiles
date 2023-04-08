# Based on Fino theme
# By Ranny Archer
# Use with a dark background and 256-color terminal!

local git_info='$(git_prompt_info)'

PROMPT="%{$fg[red]%}┌─[%{$fg[yellow]%}%B%n%b%{$fg[green]%}@%{$fg[cyan]%}%B$HOST%b%{$fg[red]%}]─[%B%{$fg[blue]%}%~%b%{$fg[red]%}]%{$git_info%}%{$fg[red]%}"
PROMPT+=$'\n'
PROMPT+="%{$fg[red]%}└─╼%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}─[%{$fg[green]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg[red]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%b%{$fg[red]%}]─[%{$fg[yellow]%}"
