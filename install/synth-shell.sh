#!/bin/bash

# Install powerline fonts
sudo apt install fonts-powerline -y

# Install synth-shell
git clone --recursive https://github.com/andresgongora/synth-shell.git ~/synth-shell

# Setup synth shell

## Add execution premmisions to setup script
chmod +x ~/synth-shell/setup.sh

## Run setup scipt with my already wanted answers, 'iunynnn'
printf 'iunynnn' | ~/synth-shell/setup.sh

# Delete ~/synth-shell
rm -rf ~/synth-shell

# Remove synth-shell-prompt.config after installation so I can use my own synth-shell-prompt.config
rm ~/.config/synth-shell/synth-shell-prompt.config
