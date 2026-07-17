#!/bin/bash

echo "[3/8] Installing development tools..."


sudo apt install -y \
python3 \
python3-pip \
python3-venv \
cmake \
ninja-build \
gcc \
g++ \
clang \
gdb \
valgrind


echo "Development tools installed"