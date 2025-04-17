#!/bin/bash

value=`~/.script/audio/get_mic_volume.sh`

if [ $value == 0 ]; then
	icon='󰍭'
	icon_name='audio-input-microphone-muted-symbolic'
elif [ $value -lt 30 ]; then
	icon='󰍬'
	icon_name='audio-input-microphone-low-symbolic'
elif [ $value -lt 70 ]; then
	icon='󰍬'
	icon_name='audio-input-microphone-medium-symbolic'
else
	icon='󰍬'
	icon_name='audio-input-microphone-high-symbolic'
fi

exec dunstify -a 'Mic volume' -u low -c 'audio.mic_volume' -i "$icon_name" -h 'string:x-dunst-stack-tag:audio.mic_volume' -h "int:value:$value" "$icon $value"
