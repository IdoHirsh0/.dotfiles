#!/bin/bash


# C
sudo apt install -y ccls


# lua (from https://github.com/sumneko/lua-language-server)

## Install ninja (the install script is dependent on it)
sudo apt install -y ninja-build

## Clone
git clone https://github.com/sumneko/lua-language-server ~/.local/share/nvim/site/language-servers/lua
cd ~/.local/share/nvim/site/language-servers/lua/
git submodule update --depth 1 --init --recursive

## Build
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
