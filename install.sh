#!/bin/bash

# Go to install scripts folder
cd install/

# Add execution permissions for all the scripts
sudo chmod +x ./*

# Run the installation scripts by order
./setup-system.sh
./language-compilers.sh
./language-servers.sh
./nvim.sh
./synth-shell.sh
./neofetch.sh

## Stow should always run last, after all the directories created by previous commands
## We want stow to symlink as minimal as possible
./stow.sh
