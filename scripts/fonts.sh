#!/bin/bash

echo "Installing Nerd Font..."

FONT_DIR="$HOME/.local/share/fonts"

mkdir -p "$FONT_DIR"

if fc-list | grep -qi "JetBrainsMono Nerd Font"
then
    echo "JetBrains Mono Nerd Font already installed"
    exit 0
fi


cd /tmp

wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

mkdir -p JetBrainsMono

unzip -q JetBrainsMono.zip -d JetBrainsMono

cp JetBrainsMono/*.ttf "$FONT_DIR"


fc-cache -fv


rm -rf JetBrainsMono JetBrainsMono.zip


echo "Font installed."