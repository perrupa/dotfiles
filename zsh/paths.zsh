# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# User executables
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:~/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOME/.config/bin"
export PATH="/Users/cmarlow/.local/bin:$PATH"
source $HOME/.local/bin/env

# Personal scripts
export PATH="$PATH:$DOTFILES/bin"

# JS
export PATH="$HOME/.yarn/bin:$PATH"

# PyEnv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"

# Go
export PATH="$HOME/.cargo/bin:$PATH"

# Android SDK
export ANDROID_HOME=/usr/local/share/android-sdk

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

