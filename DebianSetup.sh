#!/bin/sh
# idchoppers, 4/5/2021

echo "[*] Updating everything..."
sudo apt -y update
sudo apt -y upgrade
echo "[*] Done!"

echo "[*] Installing programs..."
sudo apt -y install vim neofetch
echo "[*] Done!"

echo "[*] Changing .bash_aliases and .vimrc"
cp .vimrc ~/.vimrc
cp .bash_aliases ~/.bash_aliases
echo "[*] Done!"

echo "[!] Debian is configured!"
