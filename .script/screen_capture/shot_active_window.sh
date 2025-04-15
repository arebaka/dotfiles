#!/bin/bash

info=`hyprctl activewindow -j`

pos=`echo $info | jq '.at.[]' | paste -sd ,`
size=`echo $info | jq '.size.[]' | paste -sd x`

grim -g "$pos $size" - | exec swappy -f -
