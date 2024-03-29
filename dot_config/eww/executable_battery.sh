#!/bin/bash

function level() {
	echo $(cat /sys/class/power_supply/BAT0/capacity)
}

function charging() {
	[ $(cat /sys/class/power_supply/BAT0/status) = "Charging" ]
}

function icon() {
	if charging;then
		echo ""
	elif (( $(level) < 20 ));then
        echo ""
	elif (( $(level) < 40 ));then
        echo ""
	elif (( $(level) < 60 ));then
        echo ""
	elif (( $(level) < 80 ));then
        echo ""
    else
        echo ""
    fi
}

function class() {
	if (( $(level) < 20 ));then
		echo "low"
	elif (( $(level) < 60 ));then
		echo "med"
	else
		echo "high"
	fi
}


case "$1" in
	"level") level;;
	"icon") icon;;
	"class") class;;
	*) echo "unknown command" && exit 1;;
esac
