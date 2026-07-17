#!/bin/bash

echo "[7/8] Installing electronics tools..."


sudo apt install -y \
ngspice \
gtkwave \
ghdl \
openocd \
stlink-tools \
minicom \
picocom \
okular


echo "Electronics tools installed"