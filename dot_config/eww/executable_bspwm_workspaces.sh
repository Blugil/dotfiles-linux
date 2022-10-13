#!/bin/bash

function subscribe() {
	function yuck() {
		local focus_icon=$1
		local unfoc_icon=$2
		local un="0"
		local workspaces=($(bspc query -D -m --names))
		local ws_len=${#workspaces[@]}
		local btns=()

		for ws in "${workspaces[@]}"; do
			local occ=$(bspc query -D -d .occupied --names | grep -w "$ws" > /dev/null && echo "$ws" || echo "")
			local focus=$(bspc query -D -d focused --names | grep -w "$ws" > /dev/null && echo "$ws" || echo "")
			if [ ! -z "$focus" ]; then
        icon=$focus_icon
      elif [ ! -z "$occ" ]; then
			  icon=$focus_icon 
      else
        icon=$unfoc_icon
      fi 
			local btn="(button :onclick \"bspc desktop -f $ws\" :class \"$un$focus\" \"$icon\")"
			btns+="$btn"
		done

		echo "(box :class 'workspaces' :orientation 'v' :vexpand true :halign 'center' :valign 'center' :space-evenly true ${btns[*]})"

	}

	yuck "$1" "$2"
	bspc subscribe desktop report | while read -r _ ;do
	yuck "$1" "$2"
done
}


function scroll() {
	[ "$1" = "up" ] && bspc desktop -f prev || bspc desktop -f next
}

case "$1" in
	"subscribe") subscribe "$2" "$3";;
	"scroll") scroll "$2";;
	*) "Unrecognized command '$1'";;
esac
