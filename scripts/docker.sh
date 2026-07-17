#!/bin/bash

echo "[4/8] Installing Docker..."


curl -fsSL https://get.docker.com | sudo sh


sudo usermod -aG docker $USER


echo "Docker installed"
echo "Logout/login required for docker permissions"