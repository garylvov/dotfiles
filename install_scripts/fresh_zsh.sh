#!/bin/bash

sudo apt-get -y install zsh
chsh -s $(which zsh)

echo "Install the needed font for powerlevels 10k theme"
cd ~/.dotfiles/install_scripts && sudo sh ./install_powerline_font.sh

echo "Installing Powerlevels 10k for themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.dotfiles/zsh/powerlevel10k

echo "Installing zsh syntax highlighting"
sudo apt-get install -y zsh-syntax-highlighting

echo "Installing zsh autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.dotfiles/zsh/zsh-autosuggestions

echo "Use neat stow trick"
sudo apt-get install -y stow
cd ~/.dotfiles/zsh && stow zsh

echo "terminator setup"
echo "Open Preferences using the context menu. Under Profiles select the General tab (should be selected already), "
echo "uncheck Use the system fixed width font (if not already) and select MesloLGS NF Bold"

sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get install terminator

