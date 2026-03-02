
. "$HOME/.local/bin/env"

echo 'You have started a zsh shell!'

# Set Variables
# Syntax highlighting for man pages using bat (a supercharged cat - see
# https://github.com/sharkdp/bat)
export MANPAGER="bat -plman"

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
# in the .dotfiles course, Patrick added visual studio code to the path with:
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# but I'm not doing this right now because using `code` in the command line already opens a VS code window.
# See video "33. Add Code Binary to $PATH Variable" for more info. Keep in mind,
# though, that this references the other videos previously, so you might have to watch more videos at once.

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}


# ... and Other Surprises!

# For WSL - add homebrew to profile so that it knows to use homebrew - without
# this, after you install homebrew wsl won't recognize that it's been installed
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
