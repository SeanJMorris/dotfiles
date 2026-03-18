#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

# Install Homebrew only if it exists
if exists brew; then 
    echo "brew exists, skipping install"
else
    echo "brew does not exist, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# TODO: keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474


# Patrick replaced what's below with `brew bundle --verbose` but I haven't done
# that yet.
brew install httpie
brew install bat
brew install eza
brew install zsh
# brew install git
# brew install fzf
