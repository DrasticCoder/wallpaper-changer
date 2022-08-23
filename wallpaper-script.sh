#!/bin/bash

# Wallpaper's directory.
dir="${HOME}/images/wallpapers/"

# export DBUS_SESSION_BUS_ADDRESS environment variable
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# Random wallpaper.
wallpaper=`find "${dir}" -type f | shuf -n1`

# Change wallpapers
gsettings set org.gnome.desktop.background picture-uri "file://${wallpaper}"

