#!/bin/bash

[ -f /tmp/location.json ] || ~/.script/network/location.sh > /tmp/location.json

lat=`cat /tmp/location.json | jq .lat`
lon=`cat /tmp/location.json | jq .lat`

exec wlsunset -g 1.0 -t 4000 -T 6500 -l $lat -L $lon
