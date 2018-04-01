# ~/.bash_profile

[[ -f ~/.bashrc ]] && source ~/.bashrc

[[ -f ~/.profile ]] && source ~/.profile

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx -- -keeptty > $HOME/.xorg.log 2>&1
fi
