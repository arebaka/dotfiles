#!/bin/bash
swww-daemon &>/dev/null &
sleep 1
paths=( ~/Pictures/Wallpapers/kitazinger/* )
paths=( `shuf -e "${paths[@]}"` )
while true; do
	for path in ${paths[@]}; do
		swww img -t wipe --transition-step 90 --transition-duration 3 --transition-angle $RANDOM $path
		sleep 600
	done
done
