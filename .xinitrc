if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]
then
	eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

#!/bin/bash

if [ -d /etc/X11/xinit/xinitrc.d ]
then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh
	do [ -x "$f" ] && . "$f"
	done
	unset f
fi

[[ $1 ]] && exec $1
