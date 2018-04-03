#!/bin/sh

# merge defaults
if [ -f "$HOME/.Xresources" ]; then
	xrdb "$HOME/.Xresources"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# autostart
reloadconf
setroot --restore
compton &
dropbox &

exec i3
