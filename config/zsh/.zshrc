## Functions path for zsh
fpath+=$ZDOTDIR/zfunc

## Completions
autoload -U compinit && compinit
_comp_options+=(globdots) # with hidden files

## Aliases
source $XDG_CONFIG_HOME/zsh/aliases
for index ({1..9}) alias "$index"="cd +${index}"; unset index

## Push dirs to stack for easy navigate
setopt AUTO_PUSHD           # Push the current directory visited on the stack
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd

eval $(dircolors "$XDG_CONFIG_HOME"/dircolors)

## Vim mode
# bindkey -v
# export KEYTIMEOUT=1

## fzf integration

## Delete duplicates from $PATH
typeset -U PATH

