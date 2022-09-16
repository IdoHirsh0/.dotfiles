#!/bin/bash


# Updating & Upgrading

sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y


# Installations

## Install stow
sudo apt-get install stow -y

## Install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update -y
sudo apt-get install neovim -y

## Install the C package
sudo apt install build-essential -y
sudo apt-get install manpages-dev -y

## Install C language server
sudo apt install ccls -y

## Install neofetch
sudo apt install neofetch -y


# Configurations

## Create .config and .local/share directories in ~, if doesn't exist already, to make stow symlink only the wanted directories
mkdir ~/.config
mkdir ~/.local/share -p

## Make an empty .git directory in root to make the LSP autocomplition work
sudo mkdir /.git

## Make neofetch launch on logon
echo '' >> ~/.bashrc
echo '# Make neofetch launch on logon' >> ~/.bashrc
echo 'neofetch --ascii_distro Windows7' >> ~/.bashrc


# Better bash prompt

## Install powerline fonts
sudo apt install fonts-powerline -y

## Install synth-shell
git clone --recursive https://github.com/andresgongora/synth-shell.git ~/synth-shell

## Run synth shell setup wizard
chmod +x ~/synth-shell/setup.sh
~/synth-shell/setup.sh

## Delete ~/synth-shell
rm -rf ~/synth-shell

## Remove synth-shell-prompt.config after installation so I can use my own synth-shell-prompt.config with stow
rm ~/.config/synth-shell/synth-shell-prompt.config


# Stow

sudo stow --dir=~/.dotfiles/ --target=~/ ~/.dotfiles/bash
sudo stow --dir=~/.dotfiles/ --target=~/ ~/.dotfiles/git
sudo stow --dir=~/.dotfiles/ --target=~/ ~/.dotfiles/synth-shell
sudo stow --dir=~/.dotfiles/ --target=~/ ~/.dotfiles/nvim
sudo stow --dir=~/.dotfiles/ --target=~/ ~/.dotfiles/fonts

## Stow clang-format to / to make it global
sudo stow --dir=~/.dotfiles/ --target=/  ~/.dotfiles/clang-format


# Post Stow

## Install neovim plugins
nvim --headless +PlugInstall +qall

