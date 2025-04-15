#!/bin/bash

value=`~/.script/device/get_monitor_brightness.sh`
phase=$(($value * 12 / 100))
icons=('' '' '' '' '' '' '' '' '' '󰃞' '󰃟' '󰃝' '󰃠')
icon=${icons[$phase]}

exec dunstify -a 'Brightness' -u low -h 'string:x-dunst-stack-tag:brightness' -h "int:value:$value" "$icon $value"
