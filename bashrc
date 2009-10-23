# vim:ft=sh:

# Vars
# ----
BASHDIR="$HOME/.bash"
LOCALRC="$BASHDIR/local"
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

# External Code
# -------------
eval `dircolors --bourne-shell`
. "$BASHDIR/prompt"
test -f "$LOCALRC" && . "$LOCALRC"
