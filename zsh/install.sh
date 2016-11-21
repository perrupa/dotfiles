#!/usr/bin/env bash
CURR_DIR="$( cd "$( dirname "$0" )" && pwd )"

# list of files/folders to symlink in homedir
files="zshrc"

echo "Script location: ${CURR_DIR}"

for file in $files; do
  ln -s $CURR_DIR/$file  ~/.$file
done
