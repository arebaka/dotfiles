#!/bin/bash
set -euo pipefail

dbus-monitor path='/org/freedesktop/Notifications',interface='org.freedesktop.DBus.Properties',member='PropertiesChanged' --profile |
	while read -r _; do
		COUNT=`~/.script/notifications/count_history.sh`
		if ~/.script/notifications/is_paused.sh; then
			CLASS="disabled"
		else
			CLASS="enabled"
		fi
		printf '{"text": "%s", "class": "%s", "alt": "%s"}\n' "$COUNT" "$CLASS" "$CLASS"
	done
