#!/bin/sh

# dependencies: scrot, xclip

scrot -s '%Y-%m-%d_$H-%M-%S_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f && rm $f'
