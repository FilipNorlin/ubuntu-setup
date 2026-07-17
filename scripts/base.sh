#!/bin/bash

echo "[1/8] Installing base packages..."

sudo apt update
sudo apt upgrade -y


sudo apt install -y \
git \
curl \
wget \
vim \
unzip \
zip \
tree \
htop \
net-tools \
ca-certificates \
gnupg \
software-properties-common \
build-essential \
openssh-client


echo "Base packages installed"