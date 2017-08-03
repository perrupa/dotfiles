# Functions

# runs rails tests with a relative path
# eg: `t test/models/listing_category_test.rb`
t () {
    noglob bundle exec rake test "$@"
}

# tmux session creation/loading with FZF
tm() {
  local session
  newsession=${1:-new}
  session=$(tmux list-sessions -F "#{session_name}" | \
    fzf --query="$1" --select-1 --exit-0) &&
    tmux attach-session -t "$session" || tmux new-session -s $newsession
}

## Aliases
alias gco='git checkout $(git branch | grep -v "\*" | fzf)'
