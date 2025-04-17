#!/bin/bash

if `~/.script/audio/get_mic_muted.sh`; then
	icon='󰍭'
	icon_name='audio-input-microphone-muted-symbolic'
else
	icon='󰍬'
	icon_name='audio-input-microphone-high-symbolic'
fi

exec dunstify -a 'Mic volume' -u low -c 'audio.mic_muted' -i "$icon_name" -h 'string:x-dunst-stack-tag:audio.mic_volume' "$icon $value"
