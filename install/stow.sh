#!/bin/bash

# Install stow
sudo apt-get install -y stow

# Stow all .dotfiles
sudo stow -d ~/.dotfiles -t ~ bash
sudo stow -d ~/.dotfiles -t ~ git
sudo stow -d ~/.dotfiles -t ~ synth-shell
sudo stow -d ~/.dotfiles -t ~ nvim
sudo stow -d ~/.dotfiles -t ~ fonts

## Stow clang-format to / to make it global
sudo stow -d ~/.dotfiles -t / clang-format
