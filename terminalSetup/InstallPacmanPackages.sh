
#!/bin/bash

# Check if the file exists
if [ -f "pacman.packages.txt" ]; then
  # Read each line from the file
  while IFS= read -r package; do
    # Install the package without user confirmation
    sudo pacman -S --noconfirm "$package"
  done < "pacman.packages.txt"
else
  echo "pacman.packages.txt not found."
fi
