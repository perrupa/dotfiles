# OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Vi mode for zsh input
bindkey -v
export KEYTIMEOUT=1
# Backspace over insert start point
bindkey "^?" backward-delete-char

# Plugins
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  colorize
  # fzf-zsh
  git
  github
  osx
  virtualenv
  z
  # zsh-autosuggestions
  # zsh-completions
  # zsh-syntax-highlighting
)

# Prue prompt
autoload -U promptinit; promptinit
prompt pure

