#!/bin/sh

pkill polybar
sleep 1
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar i3wmthemer_bar &
done
