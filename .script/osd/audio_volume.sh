#!/bin/bash

value=`~/.script/audio/get_volume.sh`

if [ $value == 0 ]; then
	icon='󰝟'
	icon_name='audio-volume-muted-symbolic'
elif [ $value -lt 30 ]; then
	icon='󰕿'
	icon_name='audio-volume-low-symbolic'
elif [ $value -lt 70 ]; then
	icon='󰖀'
	icon_name='audio-volume-medium-symbolic'
else
	icon='󰕾'
	icon_name='audio-volume-high-symbolic'
fi

exec dunstify -a 'Volume' -u low -c 'audio.volume' -i "$icon_name" -h 'string:x-dunst-stack-tag:audio.volume' -h "int:value:$value" "$icon $value"
