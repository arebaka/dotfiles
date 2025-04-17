#!/bin/bash

value=`~/.script/device/get_monitor_brightness.sh`
phase=$(($value * 12 / 100))
icons=('' '' '' '' '' '' '' '' '' '󰃞' '󰃟' '󰃝' '󰃠')
icon=${icons[$phase]}
icon_name='brightness-display-symbolic'

exec dunstify -a 'Brightness' -u low -c 'brightness' -i "$icon_name" -h 'string:x-dunst-stack-tag:brightness' -h "int:value:$value" "$icon $value"
