#!/bin/bash

# Install Zsh if not already installed
sudo apt-get -y install zsh

# Change the default shell to zsh
chsh -s "$(which zsh)"

echo "Install the needed font for Powerlevel10k theme"
# Ensure the install script is executed from the correct directory
DOTFILES_DIR="$HOME/.dotfiles"
INSTALL_SCRIPTS_DIR="$DOTFILES_DIR/install_scripts"
if [ ! -d "$INSTALL_SCRIPTS_DIR" ]; then
  mkdir -p "$INSTALL_SCRIPTS_DIR"
fi
# Assuming the install_powerline_font.sh script is correctly placed
cd "$INSTALL_SCRIPTS_DIR" && ./install_powerline_font.sh

echo "Installing Powerlevel10k for themes"
PL10K_DIR="$DOTFILES_DIR/zsh/powerlevel10k"
if [ -d "$PL10K_DIR" ]; then
  rm -rf "$PL10K_DIR"
fi
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$PL10K_DIR"

echo "Installing zsh syntax highlighting"
sudo apt-get install -y zsh-syntax-highlighting

echo "Installing zsh autosuggestions"
ZSH_AUTOSUGGESTIONS_DIR="$DOTFILES_DIR/zsh/zsh-autosuggestions"
if [ -d "$ZSH_AUTOSUGGESTIONS_DIR" ]; then
  rm -rf "$ZSH_AUTOSUGGESTIONS_DIR"
fi
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_AUTOSUGGESTIONS_DIR"

echo "Use neat stow trick"
sudo apt-get install -y stow
cd "$DOTFILES_DIR/" && stow zsh

echo "Terminator setup"
# Instructions for setting up Terminator
# Assumes the user will manually follow these instructions
echo "Open Preferences using the context menu. Under Profiles select the General tab (should be selected already),"
echo "uncheck Use the system fixed width font (if not already) and select MesloLGS NF Bold"

# Add the Terminator PPA and install Terminator
sudo add-apt-repository ppa:mattrose/terminator -y
sudo apt-get update
sudo apt-get install terminator -y

