#!/bin/bash
value=`brightnessctl g`
max=`brightnessctl m`
echo $(( $value * 100 / $max ))
