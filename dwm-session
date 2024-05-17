#!/bin/sh

# SORT WALLPAPER AND PASS IT TO ($wall) FUNCTION
# CHANGE WALLPAPER DIRECTORY ACC TO YOUR DIRECTORY
wall=$(find ~/wallpaper -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

# LOAD FROM ($wall) FUNCTION AND APPLY
xwallpaper --zoom $wall

# GENERATE COLOR SCHEME
wal -c
wal -i $wall

# XDOTOOL SIMULATES A KEY OR MOUSE-CLICK
xdotool key super+F5
