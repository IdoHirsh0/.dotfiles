#!/bin/bash


# Install
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update -y
sudo apt-get install  -y neovim


# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Install plugings
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
