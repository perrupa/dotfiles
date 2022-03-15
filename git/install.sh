#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"
files="gitconfig gitignore_global"    # list of files/folders to symlink in homedir

echo "Bootstrapping Git"
echo "Script location: ${CURR_DIR}"

for file in $files; do
  ln -sf $CURR_DIR/$file  ~/.$file
done
