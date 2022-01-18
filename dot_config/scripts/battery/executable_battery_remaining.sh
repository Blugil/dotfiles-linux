#!/usr/bin/bash

REMAINING=$(acpi | cut -d',' -f3)
ROFI='rofi -dmenu -lines 1 -config ~/.config/scripts/battery/theme.rasi'

if [[ $REMAINING == " " ]] 
then
    echo $REMAINING | $ROFI
else
    echo "Full" | $ROFI
fi


    

