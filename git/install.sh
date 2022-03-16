#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "Bootstrapping Git"
echo "Script location: ${CURR_DIR}"

ln -sf $CURR_DIR/  ~/.config/git

