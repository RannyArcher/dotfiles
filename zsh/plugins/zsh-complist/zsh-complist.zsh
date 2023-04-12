autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # insensitive case
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
