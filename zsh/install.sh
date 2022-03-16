#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

# list of files/folders to symlink in homedir
files="zshrc"

echo "Bootstrapping Zsh"
echo "Script location: ${CURR_DIR}"

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L git.io/antigen > ~/.config/zsh/antigen.zsh


for file in $files; do
  ln -sf $CURR_DIR/$file  ~/.$file
done
