#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "Script location: ${CURR_DIR}"

ln -fs $CURR_DIR/tmux.conf  ~/.tmux.conf
ln -fs $CURR_DIR/ ~/.config/tmux
