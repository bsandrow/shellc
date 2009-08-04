# vim:ft=sh:

# Vars
# ----
export hostconf="$HOME/.bash/$HOSTNAME"
export GPG_TTY=`tty`

# External Code
# -------------
eval `dircolors --bourne-shell`
. "~/.bash/aliases"
. "~/.bash/functions"
. "~/.bash/prompt"
[ -f "$hostconf" ] && . "$hostconf"
