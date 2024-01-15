#!/bin/bash

# Check if the file exists
if [ -f "$HOME/kickstart/terminalSetup/pacman.packages.txt" ]; then
  # Read each line from the file
  while IFS= read -r package; do
   # Install the package without user confirmation
    pacman -S --noconfirm "$package"
  done < "$HOME/kickstart/terminalSetup/pacman.packages.txt"
else
  echo "$HOME/kickstart/terminalSetup/pacman.packages.txt"
fi
