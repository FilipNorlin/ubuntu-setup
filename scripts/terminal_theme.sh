#!/bin/bash

echo "Installing Terminal Theme..."

ORIGINAL_DIR="$(pwd)"

INSTALL_DIR="$HOME/Documents"

mkdir -p "$INSTALL_DIR"

git clone https://github.com/pixegami/terminal-profile.git "$INSTALL_DIR/terminal-profile"

cd "$INSTALL_DIR/terminal-profile" || {
    echo "Failed to enter repository!"
    exit 1
}

./install_powerline.sh
./install_terminal.sh
./install_profile.sh

cd "$ORIGINAL_DIR"