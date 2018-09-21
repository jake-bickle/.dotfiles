# Custom alias
alias transfer-file-page="python -m SimpleHTTPServer 8080"

# If user is not root, pass the following commands as sudo
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get update'
    alias upgrade='sudo apt-get upgrade'
fi

# Escape a directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# Colorise grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
