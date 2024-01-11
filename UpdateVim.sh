#!/bin/bash

rm ~/.vimrc 2>/dev/null
ln -sf ~/kickstart/.vimrc ~/.vimrc
ln -sf ~/kickstart/.vimrc /etc/vimrc
vim +PlugInstall +qa
