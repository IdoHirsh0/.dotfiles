# Make sure system is updated
sudo apt update -y
sudo apt upgrade -y

# Install stow
sudo apt-get install stow -y

# Install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update -y
sudo apt-get install neovim -y

# Install the C package
sudo apt install build-essential -y
sudo apt-get install manpages-dev -y

# Install C language server
sudo apt install ccls -y

# Install tree
sudo apt install tree

# Make .config directory in ~ ,if doesn't exist already, to make stow symlink only the wanted directories
mkdir ~/.config

# Better bash prompt
sudo apt install fonts-powerline -y
cd ~
git clone --recursive https://github.com/andresgongora/synth-shell.git
chmod +x synth-shell/setup.sh
cd synth-shell
./setup.sh
cd ~/.dotfiles

# Stow
stow bash
stow git
stow nvim

# Install neovim plugins
nvim --headless +PlugInstall +qall

# Create link to my .clang-format from the root to make it global
sudo ln -s ~/.dotfiles/.clang-format /.clang-format

# Make an empty .git directory in root to make the lsp autocomplition work
sudo mkdir /.git
