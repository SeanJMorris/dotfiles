# dotfiles
Sean's personal dotfiles.

Thanks to Patrick McDonald for guidance offered in his Udemy course.

# Setting Up Dotfiles
To set up a dotfile symlink:
1. Rename the original dotfile (.zshrc) so that it does NOT have a . prefix. Any given dotfile MUST begin with a dot. For now, though, you're creating an authoritative, trackable version in your own ~/.dotfiles directory and you will create a new version WITH a dot that links to this trackable version in the third step
2. Move this new dotless dotfile into your `~/.dotfiles/` directory.
3. Use `ln -s {source} {target}` where {source} is the authoritative/real copy and the {target} is the faux file that points to the original, e.g. `ln -s ~/.dotfiles/zshrc ~/.zshrc`

## Notes

Files/Directories it does not make sense to include in .dotfiles:

No. | File/Directory | Reason
1 | .ssh | You don't want your public and private keys on the internet for everyone to see. You *could* put the config file in, but if you regularly do server work, but you don't need that for now.
2 | .zsh_history | This changes too frequently to bother changing. 
3 | .lesshst | This is created automatically when you access the man pages and stores history there. It's not necessary to keep in .dotfiles.


## To Do 
- Terminal Preferences
- Change Shell to zsh
- Dock preferences
- Mission Control Preferences (don't rearrnage spaces)
- Fider Show Path Bar
- Trackpad (Three Finger Drag and Tap To Click)
- .zshrc
- Git (config and SSH)
