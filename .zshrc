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
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias plistbuddy="/usr/libexec/PlistBuddy"
alias reload="exec ${SHELL} -l"
alias cdl="cd ~/Downloads"
alias cdt="cd ~/Desktop"
alias cc="cd ~/Code"

# Functions
function clone {
    git clone ssh://git@github.com/$@.git
}

function rclone {
    git clone --recursive ssh://git@github.com/$@.git
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
    aria2c -x5 $@
}

function o {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}

# Load starship
eval "$(starship init zsh)"