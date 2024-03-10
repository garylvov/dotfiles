#!/bin/bash

# Example URL, replace with the actual font download URL for the bold version
FONT_URL="https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"

# Download the font
wget "$FONT_URL" -O "MesloLGS NF Bold.ttf"

# Create the directory for local fonts if it doesn't exist
mkdir -p ~/.local/share/fonts

# Move the font to the fonts directory
mv "MesloLGS NF Bold.ttf" ~/.local/share/fonts/

# Refresh the font cache
fc-cache -fv

echo "Font installed."