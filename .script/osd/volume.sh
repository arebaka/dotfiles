#!/bin/bash

value=`~/.script/multimedia/get_audio_volume.sh`

if [ $value == 0 ]; then
	icon='󰝟'
	value='Muted'
elif [ $value -lt 30 ]; then
	icon='󰕿'
elif [ $value -lt 70 ]; then
	icon='󰖀'
else
	icon='󰕾'
fi

exec dunstify -a 'Volume' -u low -h 'string:x-dunst-stack-tag:volume' -h "int:value:$value" "$icon $value"
