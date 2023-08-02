#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "linking ~/.vim"

ln -sf $CURR_DIR/  ~/.vim

# Install vim plugins
# nvim -c "PlugInstall" -c "+CocInstall -sync" -c "qall"
