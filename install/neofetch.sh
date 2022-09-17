#!/bin/bash

# Install
sudo apt install neofetch -y

# Make neofetch launch on logon
echo '' >> ~/.bashrc
echo '# Make neofetch launch on logon' >> ~/.bashrc
echo 'neofetch --ascii_distro Windows7' >> ~/.bashrc
