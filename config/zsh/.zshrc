# Functions path for zsh
fpath+=$ZDOTDIR/zfunc

# Completions
autoload -U compinit && compinit

## Aliases

# User aliases 
alias -g la='ls -la'
alias -g nv='nvim'

# fzf integration

# Delete duplicates from $PATH
typeset -U PATH

