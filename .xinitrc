#!/bin/bash

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]
then eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

if [ -d /etc/X11/xinit/xinitrc.d ]
then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh
	do [ -x "$f" ] && . "$f"
	done
	unset f
fi

for i in /usr/share/fonts/*
do xset +fp $i
done

xrdb merge .Xresources
fc-cache -fv

xset fp rehash
xset b off
xset c on
xset +dpms
xset k
xset led on
xset r on

xsetroot -cursor_name left_ptr &
xfsettingsd &
setxkbmap -option grp:alt_shift_toggle us,ru &

[[ $1 ]] && exec $1

ERRFILE="$XDG_CACHE_HOME"/X11/xsession-errors
USERXSESSIONRC="$XDG_CACHE_HOME"/X11/xsessionrc
