#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Add homebrew-installed zsh to the list of valid shells
echo "Enter superuser (sudo) password to edit /etc/shells"
echo /home/linuxbrew/.linuxbrew/bin/zsh | sudo tee -a /etc/shells

# Change shell to latest version that homebrew has set up
echo "Enter user password to change login shell"
chsh -s '/home/linuxbrew/.linuxbrew/bin/zsh'
