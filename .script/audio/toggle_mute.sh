#!/bin/bash

pamixer -t

if `~/.script/audio/get_muted.sh`; then
	~/.script/osd/audio_muted.sh
else
	~/.script/osd/audio_volume.sh
fi
