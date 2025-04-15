#!/bin/bash

dbus-update-activation-environment --all
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=hyprland
