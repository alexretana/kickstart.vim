#!/bin/bash

# Define URLs and paths
GCM_RELEASE_URL="https://github.com/microsoft/Git-Credential-Manager-for-Windows/releases/download/1.20.0/gcmw-v1.20.0.zip"
INSTALL_PATH="/usr/lib/git-core"

# Download GCM release zip
wget "$GCM_RELEASE_URL" -P "$INSTALL_PATH"

# Unzip contents to the installation path
bsdtar -xf "$INSTALL_PATH/gcmw-v1.20.0.zip" -C "$INSTALL_PATH"

# Cleanup: Remove the downloaded zip file
rm "$INSTALL_PATH/gcmw-v1.20.0.zip"

# Copy .bashrc to home
ln -sf ~/kickstart/terminalSetup/.bashrc ~/.bashrc

# install git credential manager
git credential-manager install 
