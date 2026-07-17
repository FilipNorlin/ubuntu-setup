#!/bin/bash

echo "Installing terminal tools..."

sudo apt update

sudo apt install -y \
    zsh \
    tmux \
    fzf \
    ripgrep \
    fd-find \
    bat \
    eza \
    curl \
    unzip \
    wget


echo "Installing zoxide..."

if ! command -v zoxide &> /dev/null
then
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
else
    echo "zoxide already installed"
fi


echo "Installing Starship..."

if ! command -v starship &> /dev/null
then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
else
    echo "Starship already installed"
fi


echo "Installing Oh My Zsh..."

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    RUNZSH=no \
    CHSH=no \
    KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh already installed"
fi


echo "Terminal tools installed."