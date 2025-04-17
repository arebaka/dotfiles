#!/bin/bash

[ -n $DBUS_SESSION_BUS_ADDRESS ] && exit

dbus-update-activation-environment --all
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=hyprland
