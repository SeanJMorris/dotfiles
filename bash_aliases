# This is following advise provided in .bashrc file to add all aliases
#  into this separate file - the .bash_aliases file - instead of adding 
#  them directly into the .bashrc file. 

# some more ls aliases
alias ll='ls -lAFh'
alias pj='cd ~/projects'
alias pjj='cd ~/projects && ll'
alias oo='cd /mnt/c/Users/seanj/Onedrive && ll'
alias gg='cd "/mnt/c/Users/seanj/Google Drive" && ll'

mkcd() {
	mkdir -p "$1" && cd "$1"
}

cdl() {
	cd "$1" && ll
}

# Use the windows version of a web browser to open links in windows, not in wsl.
export BROWSER='powershell.exe /c "start $(wslpath -w '%s')"'


