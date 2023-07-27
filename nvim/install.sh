#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "linking ~/.config/nvim"

ln -sf $CURR_DIR/  ~/.config/nvim

