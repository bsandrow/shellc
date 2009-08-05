# vim:set ft=sh et tw=80

# Basic Vars
# ----------
export PATH='/bin:/usr/local/bin:/usr/bin:/usr/games'
export SPATH='/sbin:/usr/local/sbin:/usr/sbin'
export MANPATH='/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man'
export LD_LIBRARY_PATH='/lib:/usr/local/lib:/usr/lib'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'
export ALTERNATE_EDITOR='vi'
export VISUAL='vim'
export PAGER='less'
export LESS='-R'

# Host-Specific Profile
# ---------------------
hostprofile="$HOME/.profile.`hostname`"
test -f "$hostprofile" && . "$hostprofile"

# Load Bash Config
# ----------------
test -n "$BASH_VERSION" -a -f "$HOME/.bashrc" && . "$HOME/.bashrc"

/bin/true
