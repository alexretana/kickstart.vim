#!/bin/bash

rm ~/.vimrc 2>/dev/null
ln -sf ~/kickstart/.vimrc ~/.vimrc
vim +PlugInstall +qa
