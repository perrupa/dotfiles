#!/bin/bash

echo "spin-bootstrap..."

# Test
touch ~/loaded-from-spin-bootstrap.txt

# I will never stop typing this
alias vim="nvim"


# Cursor setup for spin plugin
cat <<EOF > "/tmp/private-extensions.json"
{
  "github": {
    "spin-vscode.vsix": "Shopify/spin-vscode"
  }
}
EOF

/usr/local/bin/install-vscode-private-extensions "$(cat /etc/spin/secrets/github_token_shopify)" "/tmp/private-extensions.json" "/home/spin/.cursor-server/extensions"

