#!/bin/bash

BASE_DIR="$HOME/code/dotfiles"
CONFIG_DIR="$HOME/.config"

NEOVIM_DIR="$CONFIG_DIR/nvim"
ALACRITTY_DIR="$CONFIG_DIR/alacritty"
ZSHENV_DIR="$HOME/.sources"

echo_error() {
    echo -ne "\x1b[1;31m$MESSAGE\e[0m"
}

echo_ok() {
    echo -ne "\x1b[1;32m$MESSAGE\e[0m"
}

echo_warn() {
    echo -ne "\x1b[1;33m$MESSAGE\e[0m"
}

echo_info() {
    echo -ne "\x1b[1;37m$MESSAGE\e[0m"
}

set_nvim() {
    nvim_conf="$NEOVIM_DIR/init.vim"
    nvim_new="$BASE_DIR/neovim/init.vim"

    MESSAGE="    NeoVim"; echo_warn
    if ! $(cmp -s $nvim_conf $nvim_new); then
        cp $nvim_new $nvim_conf
    fi
    MESSAGE=" OK!\n"; echo_ok
}

set_alacritty() {
    alacritty_conf="$ALACRITTY_DIR/alacritty.yml"
    alacritty_new="$BASE_DIR/alacritty/alacritty.yml"

    MESSAGE="    Alacritty"; echo_warn
    if ! $(cmp -s $alacritty_conf $alacritty_new); then
        cp $alacritty_new $alacritty_conf
    fi
    MESSAGE=" OK!\n"; echo_ok
}

set_zsh() {
    zsh_alias="$BASE_DIR/zsh/alias.zsh"
    zsh_env="$BASE_DIR/zsh/env.zsh"
    zsh_rc="$BASE_DIR/zsh/zshrc"
    
    MESSAGE="    ZSH"; echo_warn

    cp $zsh_alias "$ZSHENV_DIR/alias.zsh"
    cp $zsh_env "$ZSHENV_DIR/env.zsh"
    cp $zsh_rc "$HOME/.zshrc"

    MESSAGE=" OK!\n"; echo_ok
}

MESSAGE="Setting environment...\n"; echo_info

set_nvim
set_alacritty
set_zsh

if [[ "$1" = "-f" ]]; then
    MESSAGE="Sourcing env (ZSH)..."; echo_info
    source "$HOME/.zshrc"
    MESSAGE=" OK!\n"; echo_ok
fi
