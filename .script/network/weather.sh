#!/bin/bash
[ -f /tmp/location.json ] || ~/.script/network/location.sh > /tmp/location.json

lat=`cat /tmp/location.json | jq .lat`
lon=`cat /tmp/location.json | jq .lon`

exec wttrbar --lang ru --location "$lat,$lon"
