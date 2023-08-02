echo "Bootstrapping..."

# Setup dotfile symlinks
sh ./git/install.sh
sh ./vim/install.sh
sh ./nvim/install.sh

if [ "$SPIN" ]; then
  # Spin specific setup
  sh spin-bootstrap.sh
else
  # Non-spin setup
  sh ./zsh/install.sh
  touch ~/this-is-not-spin.txt
fi

