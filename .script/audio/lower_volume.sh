#!/bin/bash

pamixer -d 2
if [ `pamixer --get-volume` == 0 ]; then
	pamixer -m
fi

~/.script/osd/audio_volume.sh
