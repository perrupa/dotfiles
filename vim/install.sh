#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "linking ~/.vim"

ln -sf $CURR_DIR/  ~/.vim
ln -sf $CURR_DIR/  ~/.config/nvim
ln -sf $CURR_DIR/init.vim  ~/.vimrc
