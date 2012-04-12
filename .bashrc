# If not interactive, ignore this file
test -z "$PS1" && return

# Append to the history file, don't overwrite it
shopt -s histappend

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Alias list to make life easier
test -f "$HOME/.bash_aliases" && source "$HOME/.bash_aliases"

# Enable programmatic completion
test -f /opt/local/etc/bash_completion && source /opt/local/etc/bash_completion

# Make the terminal pretty
test -f "$HOME/.bash_ps1" && source "$HOME/.bash_ps1"

# Make grep pretty
export GREP_COLOR="1;37;41"
export LANG=C

# Make ls pretty
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxgggdabagacad"

### Color guide ###
#    a     black
#    b     red
#    c     green
#    d     brown
#    e     blue
#    f     magenta
#    g     cyan
#    h     light grey
#    A     bold black, usually shows up as dark grey
#    B     bold red
#    C     bold green
#    D     bold brown, usually shows up as yellow
#    E     bold blue
#    F     bold magenta
#    G     bold cyan
#    H     bold light grey; looks like bright white
#    x     default foreground or background
#
#    1.    directory
#    2.    symbolic link
#    3.    socket
#    4.    pipe
#    5.    executable
#    6.    block special
#    7.    character special
#    8.    executable with setuid bit set
#    9.    executable with setgid bit set
#    10.   directory writable to others, with sticky bit
#    11.   directory writable to others, without sticky bit

# The default is "exfxcxdxbxegedabagacad", i.e. blue foreground and
# default background for regular directories, black foreground and red
# background for setuid executables, etc.
