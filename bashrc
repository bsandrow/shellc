# vim:ft=sh:

# Vars
# ----
export BASHDIR="$HOME/.bash"
export hostconf="$BASHDIR/$HOSTNAME"
export GPG_TTY=`tty`

# Aliases
# -------
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias llt='ls -lt'
alias lltr='ls -ltr'
alias grepc='grep --color=auto'
alias egrepc='egrep --color=auto'
alias pst='ps -u $USER wwf'
alias dir='ls --format=vertical --group-directories-first'
alias vdir='ls --format=long --group-directories-first'
alias gls='git log --pretty=oneline --abbrev-commit'

# External Code
# -------------
eval `dircolors --bourne-shell`
. "$BASHDIR/prompt"
[ -f "$hostconf" ] && . "$hostconf"
