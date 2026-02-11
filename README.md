# dotfiles
Sean's personal dotfiles.

Thanks to Patrick McDonald for guidance offered in his Udemy course.

# Setting Up Dotfiles
To set up a dotfile symlink:
1. Rename the original dotfile (.zshrc) so that it does NOT have a . prefix. Any given dotfile MUST begin with a dot. For now, though, you're creating an authoritative, trackable version in your own ~/.dotfiles directory and you will create a new version WITH a dot that links to this trackable version in the third step
2. Move this new dotless dotfile into your `~/.dotfiles/` directory.
3. Use `ln -s {source} {target}` where {source} is the authoritative/real copy and the {target} is the faux file that points to the original, e.g. `ln -s ~/.dotfiles/zshrc ~/.zshrc`


## To Do 
- Terminal Preferences
- Change Shell to zsh
- Dock preferences
- Mission Control Preferences (don't rearrnage spaces)
- Fider Show Path Bar
- Trackpad (Three Finger Drag and Tap To Click)
- .zshrc
- Git (config and SSH)
