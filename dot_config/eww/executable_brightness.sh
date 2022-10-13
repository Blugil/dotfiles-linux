#!/usr/bin/env bash

brightness=$(head /sys/class/backlight/intel_backlight/brightness)
max_brightness=$(head /sys/class/backlight/intel_backlight/max_brightness)
percent=$(awk "BEGIN { pc=100*${brightness}/${max_brightness}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
echo $percent%

while inotifywait -qq -e close_write /sys/class/backlight/intel_backlight/brightness; do 
  case "$1" in 
    "percent") 
      brightness=$(head /sys/class/backlight/intel_backlight/brightness)
      percent=$(awk "BEGIN { pc=100*${brightness}/${max_brightness}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
      echo $percent%
  esac
done
