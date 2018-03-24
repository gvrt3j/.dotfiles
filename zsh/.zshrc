#!/bin/zsh

# Environment variables.
[[ -f ~/.zprofile ]] && source ~/.zprofile

# Load configuration files.
for config (~/.zsh/*.zsh) source $config
