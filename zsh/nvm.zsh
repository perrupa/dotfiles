# Source npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Lazy load nvm
# e.g. '--no-use' === don't call `nvm use default`
# [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR"/nvm.sh --no-use
