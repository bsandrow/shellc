# we don't need any of this stuff on non-interactive sessions
[ -z "$PS1" ] && return

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

# Note: The --group-directories-first option is newer and may need to be
#       disabled on systems running an older ls (or non-gnu systems)
alias dir='ls --format=vertical --group-directories-first'
alias vdir='ls --format=long --group-directories-first'

# External Code
# -------------
test -x /usr/bin/dircolors && eval "`dircolors --bourne-shell`"
. "$BASHDIR/prompt"
test -f "$LOCALRC" && . "$LOCALRC"

# vim:ft=sh:
