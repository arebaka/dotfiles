#!/bin/bash

if `~/.script/audio/get_muted.sh`; then
	icon='󰝟'
	icon_name='audio-volume-muted-symbolic'
else
	icon='󰕾'
	icon_name='audio-volume-high-symbolic'
fi

exec dunstify -a 'Volume' -u low -c 'audio.muted' -i "$icon_name" -h 'string:x-dunst-stack-tag:audio.volume' "$icon $value"
