## Aliases
alias e='nvim'
alias vim='nvim'

alias la='ls -al'
alias ll='ls -l'
# If `eza` is available, alias it.
if command -v eza >/dev/null 2>&1; then
  LS_COMMAND="eza --group-directories-first -F "
  alias ls="$LS_COMMAND"
  alias la="$LS_COMMAND -al"
  alias ll="$LS_COMMAND -l"
  alias l="$LS_COMMAND -lbF --git"
fi

alias gs='git st'
alias ga='git a'
alias gc='git commit'
alias grc='git rebase --continue'
alias gco='git checkout $(git br | grep -v "\*" | fzf)'

alias help='tldr' # Better help

# Typos 🤦
alias bim='nvim'
alias cim='nvim'
alias gitt='git'
alias gti='git'
alias gits='git st'
alias gist='git st'

