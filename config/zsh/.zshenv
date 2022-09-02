# Default editor
export EDITOR=nvim
export VISUAL=nvim

# GPG input
export GPG_TTY=$(tty)

# XDG configuration
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.local/share/cache

# zsh env
export HISTFILE=$ZDOTDIR/zhistory
export HISTSIZE=10000
export SAVEHIST=10000


# Utility
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc

# Golang env
export GOPATH=$XDG_DATA_HOME/go
export GOBIN=$HOME/.local/bin

# Rust env
export CARGO_HOME=$XDG_DATA_HOME/rust/cargo
export RUSTUP_HOME=$XDG_DATA_HOME/rust/rustup

# Path to execute
export PATH="${HOME}/.local/bin:${PATH}"
. "/home/grig/.local/share/rust/cargo/env"
