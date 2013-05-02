# Go up a directory or two
alias ..='f(){ test -n "$1" && cd ../$1 || cd ..;}; f'
alias ...='f(){ test -n "$1" && cd ../../$1 || cd ../..;}; f'

# Go back to previous working directory
alias back='cd - >/dev/null'

# Makes 'git clone' better by going to the new repo after it's cloned
alias clone='f(){ git clone "$@"; test -n "$2" && cd "$2" || cd `basename "$1" | sed "s/^.*\://"`;}; f'

# Quick composer
alias composer="composer.phar"

# Copy some file to the current directory
alias cph='f(){ test -d && cp -R "$1" . || cp "$1" .;}; f'

# cd to the Desktop
alias desk="cd $HOME/Desktop"

# Random dice roll
alias dice='f(){ ROLLS=`test -z $1 && echo 1 || echo $1`; for (( i=0; i < $ROLLS; i++)); do echo -n $((0x`head -c1 /dev/random|xxd -ps`%6+1)); echo; done;}; f'

# Get frequency of every word in given file
alias freq='f(){ cat "$1" | tr -d "[:punct:] | tr "[:upper:]" "[:lower:]" | tr -s " " "\n" | sort | uniq -c | sort -rn;}; f'

# 'gem' needs root access
alias gem="sudo gem"

# Make grep pretty!
alias grep="grep --color=auto"

# Quicker growl
alias growl="growlnotify -m"
alias sgrowl="growlnotify -s -m"

# Image Mapping helpers
alias image2map='f(){ python ~/git/4627969/Image2Map.py "$@";}; f'
alias mapWriter='f(){ python ~/git/4627969/MapWriter.py "$@";}; f'

# Get external IP
alias ip="curl ifconfig.me"

# Format and colorize JSON
alias jpp='{ read s; echo $s | jsonpp | pygmentize -l javascript; }'

# Shorthand for directory listing
alias la="ls -A"
alias ll="ls -l"

# Get local IP
alias lip="ipconfig getifaddr en0 || ipconfig getifaddr en1"

# Start litecoin miner in detached screen
alias lmine="screen -d -m -S litecoin minerd -o http://mine.pool-x.eu:8000 -O Valrix.1:Pop0Ric05 --threads 4"

# Start bitcoin miner in detached screen
alias mine="screen -S bitcoin sh $HOME/miner/start.sh -v1 -w256"

# Alias for mysql.server
alias ms="mysql.server"

# Move the file into the current directory
alias mvh='f(){ mv "$1" .;}; f'

# Find the nonce of the payload
#

# Attempt to extract the text from a given image
alias ocr='f(){ convert "$1" -type Grayscale /tmp/ocr.tif; tesseract /tmp/ocr.tif /tmp/ocr -psm 7 2>/dev/null; head -n 1 /tmp/ocr.txt; rm /tmp/ocr.*;}; f'
alias ocr2='f(){ convert "$1" -level 5%,0 -type Grayscale /tmp/ocr2.tif; tesseract /tmp/ocr2.tif /tmp/ocr2 -psm 7 2>/dev/null; head -n 1 /tmp/ocr2.txt; rm /tmp/ocr2.*;}; f'

# Make the 'open' command default to opening a Finder window of the current directory
alias open='f(){ test -z "$1" && open . || open "$1";}; f'

# Make 'patch' less confusing
alias patch="patch -p0 <"

# Periodic requires sudo
alias periodic="sudo periodic"

# Dammit, Pip!
alias pip="sudo pip"

# Quicker pasteboard access
alias c="pbcopy"
alias p="pbpaste"

# Postgres
alias pg='f(){
    case "$1" in
    start)
        pg_ctl -l /usr/local/var/log/postgres.log start;
        ;;
    status)
        pg_ctl status;
        ;;
    stop)
        pg_ctl stop -s -m fast;
        ;;
    esac
}; f'

# All these need root access
alias pear="sudo pear"
alias pecl="sudo pecl"

# Quicklook from command-line
alias ql='f(){ qlmanage -p "$1";}; f'

# Create a new RAMDisk
alias ramdisk='f(){ SIZE=200000;test -n "$1" && SIZE=$(($1*2000));diskutil eraseVolume HFS+ RAMDisk `hdid -nomount ram://$SIZE`;}; f'

# Turn on Redis server
alias reds='redis-server /usr/local/etc/redis.conf'

# Open pull request page for current branch in current repo in the default browser
alias req='f(){ R=`git remote -v | grep origin -m 1 | sed "s:\/: :" | awk "{print \\$3}"`;B=`git branch | grep "*" | awk "{print \\$2}"`;test -n "$1" && U="$1" || U=`git config --get github.user`;open https://github.com/$U/$R/pull/new/$B;}; f'

# Quickly resume a screen session
alias resume='f(){ screen -r "$1";}; f'

# Install 'rmtrash' and alias 'rm' so we never delete files, just move them to the trash
alias rm="rmtrash -u phyreman"

# Quickly switch to root
alias root="sudo su -"

# Start the stratum proxy in a detached screen
alias stratum="screen -d -m -S stratum mining_proxy.py"

# Make 'vim' use 'sudo' so we can access files that we shouldn't
alias svim="sudo vim"

# Give top a high priority, then clear the screen once done
alias top="top && clear"

# Show all occurances
alias which="which -a"
