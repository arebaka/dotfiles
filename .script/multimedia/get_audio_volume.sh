#!/bin/bash

if [ `pamixer --get-mute` == 'true' ]; then
	echo 0
	exit
fi
pamixer --get-volume
