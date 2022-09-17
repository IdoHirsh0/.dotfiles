#!/bin/bash

# Update & Upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y

# Configuration

## Create .config & .local/share directories in ~, to make stow symlink only wanted directories
mkdir ~/.config
mkdir ~/.local/share -p

## Make an empty .git directory in root to make the LSP autocomplition work
sudo mkdir /.git
