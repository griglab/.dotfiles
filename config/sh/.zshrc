# Functions path for zsh
fpath+=~/.zfunc

# Completions
autoload -U compinit && compinit

alias la='ls -la'
alias nv='nvim'

# Delete duplicates from $PATH
typeset -U PATH
