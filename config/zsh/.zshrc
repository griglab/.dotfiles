## Functions path for zsh
fpath+=$ZDOTDIR/zfunc

## Completions
autoload -U compinit && compinit
_comp_options+=(globdots) # with hidden files

## Aliases
source $XDG_CONFIG_HOME/zsh/aliases

## Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Disable underline highlights
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

## Push dirs to stack for easy navigate
#setopt AUTO_PUSHD           # Push the current directory visited on the stack
#setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack
#setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd

# eval $(dircolors "$XDG_CONFIG_HOME"/dircolors)

# Prompt
PS1="%~ ➜ "

## Vim mode
# bindkey -v
# export KEYTIMEOUT=1

# Binding
bindkey '^ ' autosuggest-accept

## fzf integration

## Delete duplicates from $PATH
typeset -U PATH


[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
