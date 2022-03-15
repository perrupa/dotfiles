echo "Bootstrapping..."

# Setup dotfile symlinks
sh ./vim/install.sh

# Spin specific setup
if [ "$SPIN" ]; then
  sh spin-bootstrap.sh
fi

