PROMPT=' %{$fg[yellow]%}%n%{$reset_color%} at %{$fg[cyan]%}%M%{$reset_color%} in %{$fg[blue]%}%c%{$reset_color%} $(git_prompt_info)
%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})%{$reset_color%} ' 

ZSH_THEME_GIT_PROMPT_PREFIX="branch %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
