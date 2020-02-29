# Shopify's dev tooL
source /opt/dev/dev.sh

# Functions
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

  tmux list-sessions | grep $SESSION_NAME && $(
    tmux new-session -d -s $SESSION_NAME -c ~/Projects/dotfiles -n 'Dotfiles'
  )

  tmux list-windows | grep 'Notes' && $(
    tmux new-window -t $SESSION_NAME: -n 'Notes'
    tmux send-keys 'cd ~/Notes' Enter
    tmux send-keys "clear" Enter
  )

  tmux select-window -t $SESSION_NAME:1
}

# tmux session creation/loading with FZF
function tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"

  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi

  session=$( \
    tmux list-sessions -F "#{session_name}" 2>/dev/null \
    | fzf --select-1 --exit-0 \
  )

  [[ -n "$session" ]] && $( \
    tmux $change -t "$session" \
  ) || create_personal_tmux_session
}


# FZF -- Fuzzy file finder
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/*'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# CTRL-R - Paste the selected command from history into the command line
fzf-history-widget() {
  local selected restore_no_bang_hist
  if selected=$(fc -l 1 | $(__fzfcmd) +s --tac +m -n2..,.. --tiebreak=index --toggle-sort=ctrl-r -q "$LBUFFER"); then
    num=$(echo "$selected" | head -1 | awk '{print $1}' | sed 's/[^0-9]//g')
    LBUFFER=!$num
    if setopt | grep nobanghist > /dev/null; then
      restore_no_bang_hist=1
      unsetopt no_bang_hist
    fi
    zle expand-history
    [ -n "$restore_no_bang_hist" ] && setopt no_bang_hist
  fi
  zle redisplay
}
zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget
