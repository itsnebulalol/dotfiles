# Bun stuff
[ -s "/Users/nebula/.bun/_bun" ] && source "/Users/nebula/.bun/_bun"

# Aliases
alias cat="bat --color=always --style plain"
alias ncat="bat --color=always -n"
alias nic="$THEOS/bin/nic.pl"
alias ls="ls -aF --color=auto"
alias la="ls -laF --color=auto"
alias grep='grep --color'
alias cp='rsync -ah --info=progress2'
alias ip="curl ifconfig.me"
alias localip="ipconfig getifaddr en0"
alias plistbuddy="/usr/libexec/PlistBuddy"
alias reload="exec ${SHELL} -l"
alias cdl="cd ~/Downloads"
alias cdt="cd ~/Desktop"
alias cc="cd ~/Code"
alias pinentry='pinentry-mac'
alias dy="dig +short @dns.toys"

# Functions
function clone {
    git clone https://github.com/$@.git
}

function rclone {
    git clone --recursive https://github.com/$@.git
}

function commit {
    git add .
    git commit -am $*
    git push
}

function numfiles { 
    N="$(ls $1 | wc -l)"
    echo "$N files in $1"
}

function mkd {
	mkdir -p "$@" && cd "$_";
}

function download {
    aria2c -x16 $@
}

function o {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}

function sudo {
	unset -f sudo
	if [[ "$(uname)" == 'Darwin' ]] && ! grep 'pam_tid.so' /etc/pam.d/sudo --silent; then
		sudo sed -i -e '1s;^;auth       sufficient     pam_tid.so\n;' /etc/pam.d/sudo
	fi
	sudo "$@"
}

# Load starship
eval "$(starship init zsh)"
