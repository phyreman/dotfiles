# Go up a directory or two
alias ..="cd .."
alias ...="cd ../.."

# Go back to previous working directory
alias back='cd `cd -`'

# Makes 'git clone' better by going to the new repo after it's cloned
alias clone='f(){ git clone "$@"; test -n "$2" && cd "$2" || cd `basename "$1" | sed "s/^.*\://"`;}; f'

# Copy some file to the current directory
alias cph='f(){ cp "$1" .;}; f'

# cd to the Desktop
alias desk="cd $HOME/Desktop"

# 'gem' needs root access
alias gem="sudo gem"

# Make grep pretty!
alias grep="grep --color=auto"

# Get external IP
alias ip="dig +short myip.opendns.com @resolver.opendns.com"

# Shorthand for directory listing
alias la="ls -A"
alias ll="ls -l"

# Get local IP
alias lip="ipconfig getifaddr en0 || ipconfig getifaddr en1"

# Move the file into the current directory
alias mvh='f(){ mv "$1" .;}; f'

# Make the 'open' command default to opening a Finder window of the current directory
alias open='f(){ test -z "$1" && open . || open "$1";}; f'

# Make 'patch' less confusing
alias patch="patch -p0 <"

# All these need root access
alias pear="sudo pear"
alias pecl="sudo pecl"
alias port="sudo port"

# Create a new RAMDisk
alias ramdisk='f() { SIZE=200000;test -n "$1" && SIZE=$(($1*2000));diskutil eraseVolume HFS+ RAMDisk `hdid -nomount ram://$SIZE`;}; f'

# Install 'rmtrash' and alias 'rm' so we never delete files, just move them to the trash
alias rm="rmtrash"

# Make 'vim' use 'sudo' so we can access files that we shouldn't
alias svim="sudo vim"

# Give top a high priority, then clear the screen once done
alias top="nice nice top && clear"

# Show all occurances
alias which="which -a"
