#!/bin/bash

pamixer --default-source -t

if `~/.script/audio/get_mic_muted.sh`; then
	~/.script/osd/audio_mic_muted.sh
else
	~/.script/osd/audio_mic_volume.sh
fi
