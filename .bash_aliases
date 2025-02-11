# Quick alias to clear out some junk from HOME.
if type -fP rm &> /dev/null; then
    PLACES=(
        "$HOME/.cache"
        "$HOME/.local/share/Trash"
        "$HOME/.thumbnails"
        "$HOME/.mozilla/firefox/Crash\\ Reports"
        "$HOME/.mozilla/firefox/Pending\\ Pings"
    )
    alias hsh="rm --interactive=never -rv ${PLACES[@]} 2> /dev/null" #: Clear out some junk from the current user's HOME.
fi

alias l="ls -aC --group-directories-first"
#alias fz="fzf --print0 --height 75% --layout reverse --border --bind 'enter:become(vim {})'"

# history shredder
alias shredHistory="echo "" > ~/.bash_history && history -c && exec \$SHELL -l"
alias shredSyslog='sudo truncate /var/log/syslog --size 0'

# zsh-like autosuggestion
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# List services (enabled, static, etc)
alias listUnitFiles='systemctl list-unit-files --type service'
alias listRunning='systemctl | grep running'

# Show open ports
alias openports='sudo netstat -nape --inet'


# see https://juliu.is/a-simple-tmux/ 
#    # tat: tmux attach
#function tat {
#  name=$(basename `pwd` | sed -e 's/\.//g')
#
#  if tmux ls 2>&1 | grep "$name"; then
#    tmux attach -t "$name"
#  elif [ -f .envrc ]; then
#    direnv exec / tmux new-session -s "$name"
#  else
#    tmux new-session -s "$name"
#  fi
#}
