#!/bin/bash
[ -f /tmp/location.json ] || ~/.script/network/location.sh > /tmp/location.json

lat=`cat /tmp/location.json | jq .lat`
lon=`cat /tmp/location.json | jq .lon`

exec curl "https://wttr.in/$lat,$lon?format=1"
