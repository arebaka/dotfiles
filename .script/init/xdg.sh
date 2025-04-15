#!/bin/bash

pkill xdg-desktop-portal

systemctl --user stop xdg-desktop-portal
systemctl --user stop xdg-desktop-portal-gnome
systemctl --user stop xdg-desktop-portal-kde
systemctl --user stop xdg-desktop-portal-gtk
systemctl --user stop xdg-desktop-portal-wlr
systemctl --user stop xdg-desktop-portal-hyprland
systemctl --user stop wireplumber
systemctl --user stop pipewire

pipewire && wireplumber
/usr/lib/xdg-desktop-portal-hyprland
/usr/lib/xdg-desktop-portal-gkt
/usr/lib/xdg-desktop-portal

systemctl --user start pipewire
systemctl --user start wireplumber
systemctl --user start xdg-desktop-portal
systemctl --user start xdg-desktop-portal-hyprland
