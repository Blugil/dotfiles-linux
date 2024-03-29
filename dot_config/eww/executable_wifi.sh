#!/bin/bash

status=$(nmcli | grep "^wlp2s0" | cut -d ":" -d " " -f 2)

function icon() {
    [ "$status" = "connected" ] && echo " " || echo "ﲁ"
}

function class() {
    [ "$status" = "connected" ] && echo "wifi-on" || echo "wifi-off"
}

case "$1" in
	"icon") icon;;
	"class") class;;
	*) echo "unknown command" && exit 1;;
esac

