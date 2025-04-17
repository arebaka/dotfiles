#!/bin/bash

if [ `pamixer --get-mute` == 'true' ]; then
	pamixer -u
fi
pamixer --allow-boost --set-limit 100 -i 2

~/.script/osd/audio_volume.sh
