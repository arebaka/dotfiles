#!/bin/bash

if [ `pamixer --default-source --get-mute` == 'true' ]; then
	echo 0
	exit
fi
pamixer --default-source --get-volume
