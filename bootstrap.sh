echo "Bootstrapping..."

# Setup dotfile symlinks
sh ./zsh/install.sh
sh ./vim/install.sh
sh ./git/install.sh

# Spin specific setup
if [ "$SPIN" ]; then
  sh spin-bootstrap.sh
fi

