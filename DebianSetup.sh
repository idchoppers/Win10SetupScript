#!/bin/sh
# idchoppers, 4/5/2021

# Copyright 2021 Kyle Smith
# Licensed under GPL-3.0-or-later

echo "[*] Updating everything..."
sudo apt -y update
sudo apt -y upgrade
echo "[*] Done!"

echo "[*] Installing programs..."
sudo apt -y install vim neofetch htop build-essential gdb
echo "[*] Done!"

echo "[*] Changing .bash_aliases and .vimrc"
cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases
echo "[*] Done!"

echo "[!] Debian is configured!"
