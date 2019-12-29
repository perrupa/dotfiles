# Functions

# runs rails tests with a relative path
# eg: `t test/models/listing_category_test.rb`
t () {
    noglob bundle exec rake test "$@"
}

function diff {
  colordiff -u "$@" | less
}

function fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}

# Tmux section
function create_personal_tmux_session() {
  SESSION_NAME="Personal"
  tmux new-session -d -s $SESSION_NAME -c ~/Projects/dotfiles -n 'Dotfiles'
  tmux new-window -t $SESSION_NAME: -n 'Notes'
  tmux send-keys 'cd ~/Notes' Enter
  tmux send-keys "clear" Enter
  tmux select-window -t $SESSION_NAME:1
}

# tmux session creation/loading with FZF
tm() {
  local session
  newsession=${1:-Personal}
  session=$(tmux list-sessions -F "#{session_name}" | \
    fzf --query="$1" --select-1 --exit-0) &&
    tmux attach-session -t "$session" \
    || $( create_personal_tmux_session && tmux attach-session -t "Personal")
}

