# ~/.zshrc

# Script for login shells
[[ -f ~/.zprofile ]] && source ~/.zprofile

# Load configuration files.
for config (~/.zsh/*.zsh) source $config
