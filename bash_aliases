# This is following advise provided in .bashrc file to add all aliases
#  into this separate file - the .bash_aliases file - instead of adding 
#  them directly into the .bashrc file. 

alias ll='ls -lAFh'
alias la='eza -la --header --classify --git'
alias pj='cd ~/projects'
alias pjj='cd ~/projects && la'
alias oo='cd /mnt/c/Users/seanj/Onedrive && la'
alias gg='cd "/mnt/c/Users/seanj/Google Drive" && la'
alias cl='clear'
# `trail` will itemize the directories in $PATH. Note that syntax for bash is
# distinct from that of zsh.
alias trail='echo $PATH | tr ":" "\n"'

mkcd() {
	mkdir -p "$1" && cd "$1"
}

cdl() {
	cd "$1" && la
}

# Use the windows version of a web browser to open links in windows, not in wsl.
export BROWSER='powershell.exe /c "start $(wslpath -w '%s')"'


