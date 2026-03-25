
. "$HOME/.local/bin/env"

echo 'loading zshrc...'

# SET VARIABLES
    # Syntax highlighting for man pages using bat (a supercharged cat - see
    # https://github.com/sharkdp/bat)
export MANPAGER="bat -plman"
export HOMEBREW_CASK_OPTS="--no-quarantine"
    # option that will change default from cat to bat (this supports the `trail`
    # alias below
export NULLCMD=bat

# CHANGE ZSH OPTIONS
# add a horizontal line after output
my-line-separator() {
    print "" 
    print -r -- ${(r:$COLUMNS::─:)}
}
  
autoload -Uz add-zsh-hook
add-zsh-hook precmd my-line-separator

# CREATE ALIASES
alias ll='ls -lAFh'
alias la='eza -la --header --classify --git'
alias pj='cd ~/projects'
alias pjj='cd ~/projects && la'
alias oo='cd /mnt/c/Users/seanj/Onedrive && la'
alias gg='cd "/mnt/c/Users/seanj/Google Drive" && la'
alias cl='clear'
    # `trail` will itemize the list of variables in $PATH. Note this syntax is
    # specific to zsh. Bash has another version.
        # `path` outputs an array (multiple values) while `PATH` outputs a single
        # string (a "scalar")
alias trail='<<<${(F)path}'
alias tree='eza --tree --level=2'
alias reload="source ~/.zshrc"

mkcd() {
	mkdir -p "$1" && cd "$1"
}

cdl() {
	cd "$1" && la
}


# CUSTOMIZE PROMPT(S)
PROMPT='zsh %1~ %L 
%# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# in the .dotfiles course, Patrick added visual studio code to the path with:
# export PATH="$PATH:/Applications/Visual Studio
# Code.app/Contents/Resources/app/bin" but I'm not doing this right now because
# using `code` in the command line already opens a VS code window.  See video
# "33. Add Code Binary to $PATH Variable" for more info. Keep in mind, though,
# that this references the other videos previously, so you might have to watch
# more videos at once.

# WRITE HANDY FUNCTIONS
function mkcd() {
    mkdir -p "$@" && cd "$_";
}



# ... AND OTHER SURPRISES!

# For WSL - add homebrew to profile so that it knows to use homebrew - without
# this, after you install homebrew wsl won't recognize that it's been installed
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#
# Only initialize Homebrew if 'brew' isn't already a command
if ! command -v brew &> /dev/null; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


# FZF CONFIGURATIONS
export FZF_DEFAULT_OPTS="--layout=reverse --border --info=inline --bind 'ctrl-/:toggle-preview' --preview 'bat --style=numbers --color=always --line-range :500 {}'"
#if fzf.zsh is present in home folder, then source it
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh ] && source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh
[ -f /home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh ] && source /home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh
