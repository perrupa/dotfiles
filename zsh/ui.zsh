# Vi mode for zsh input
bindkey -v
export KEYTIMEOUT=1
# Backspace over insert start point
bindkey "^?" backward-delete-char


# OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Plugins
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  colored-man
  colorize
  github
  virtualenv
  brew
  osx
  z
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
  fzf-zsh
)

# Prue prompt
autoload -U promptinit; promptinit
prompt pure

