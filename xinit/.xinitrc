#!/bin/sh

if [ -f "$HOME/.Xresources" ]; then
	xrdb "$HOME/.Xresources"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

xset fp rehash
reloadconf

xsetroot -cursor_name left_ptr
compton &
setroot --restore
dropbox &

exec i3
