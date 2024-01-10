#!/bin/bash

rm ~/.vimrc
ln -sf ~/kickstart/.vimrc ~/.vimrc
vim +PlugInstall +qa
