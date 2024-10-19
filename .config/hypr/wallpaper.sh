#! /run/current-system/sw/bin/bash

wall=$(find /home/sparrow/Wallpapers/ -type f,l | shuf -n 1)
# monitor=`hyprctl mointors | grep Monitor | awk '{print $2}'`
swaybg -i $wall -m fill

# echo $wall
