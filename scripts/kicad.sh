#!/bin/bash

echo "Installing KiCad..."

PPA="ppa:kicad/kicad-10.0-releases"

if ! grep -Rq "kicad-10.0-releases" /etc/apt/sources.list /etc/apt/sources.list.d 2>/dev/null; then
    sudo add-apt-repository --yes "$PPA"
else
    echo "KiCad repository already exists."
fi

sudo apt update
sudo apt install --install-recommends -y kicad