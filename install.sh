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
