#!/bin/bash

username=$(whoami)
path="/c/Users/$username/AppData/Local/nvim/init.lua"

rm $path 2>/dev/null
ln -sf ~/kickstart/nvim/init.lua $path
nvim -c "PlugUpdate" -c "qa!"
