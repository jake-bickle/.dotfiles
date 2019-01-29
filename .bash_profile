alias transfer-file-page="python -m SimpleHTTPServer 8080"
alias startvpn="sudo openvpn ~/gato.ovpn"

# If user is not root, pass the following commands as sudo
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo brew update'
    alias upgrade='sudo brew upgrade'
fi

# Escape a directory
alias '..'='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# Listing
alias la='ls -a'
alias ll='ls -l'

# Colorise grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

vim()
{
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}
