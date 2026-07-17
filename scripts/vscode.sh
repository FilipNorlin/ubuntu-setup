#!/bin/bash

echo "[5/8] Installing VS Code..."


wget -qO- https://packages.microsoft.com/keys/microsoft.asc \
| gpg --dearmor \
| sudo tee /usr/share/keyrings/microsoft.gpg > /dev/null


echo "deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/microsoft.gpg] \
https://packages.microsoft.com/repos/code stable main" \
| sudo tee /etc/apt/sources.list.d/vscode.list


sudo apt update

sudo apt install -y code


while read extension
do
    code --install-extension $extension
done < config/vscode_extensions.txt


echo "VS Code installed"