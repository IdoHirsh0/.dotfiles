#!/bin/bash

cd install/
sudo chmod +x ./*

./setup-system.sh
./language-compilers.sh
./language-servers.sh
./synth-shell.sh
./neofetch.sh
./stow.sh
./neovim.sh
