#!/bin/bash

echo "[6/8] Installing KiCad 10..."


sudo add-apt-repository --yes ppa:kicad/kicad-10-releases

sudo apt update


sudo apt install -y \
kicad \
kicad-packages3d


echo "KiCad installed"