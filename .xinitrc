#!/bin/bash

xset b off
xset +dpms
xset dpms 300 600 900
xset led off
xset m 4/1 0
xset r 600 25
xset s 600 10

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

if [ -f ~/.Xresources ]; then
	if [ -x /usr/bin/cpp ]; then
		xrdb -merge ~/.Xresources
	else
		xrdb -nocpp -merge ~/.Xresources
	fi
fi

if [ -f ~/.Xmodmap ]; then
	xmodmap ~/.Xmodmap
fi

if [ -f ~/.xinputrc ]; then
	. ~/.xinputrc
fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

if [ -f ~/.xprofile ]; then
	. ~/.xprofile
fi

[[ $1 ]] && exec $1 || exec i3
