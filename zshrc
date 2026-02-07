
. "$HOME/.local/bin/env"

echo 'You have started a zsh shell!'

# Set Variables


# Change ZSH Options


# Create Aliases
alias ll="ls -lAFh"
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


# Customize Prompt(s)
PROMPT='
zsh %1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable


# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}


# ... and Other Surprises!
