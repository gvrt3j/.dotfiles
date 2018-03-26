# ~/.bash_profile

# Include ~/.bashrc if it exists.
[[ -f ~/.bashrc ]] && source ~/.bashrc

# Script for login shells.
[[ -f ~/.profile ]] && source ~/.profile

# Autostart X at login.
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx -- -keeptty > $HOME/.xorg.log 2>&1
fi
