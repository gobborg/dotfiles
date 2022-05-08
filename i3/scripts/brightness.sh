#!/usr/bin/bash
# yeah i stole this from sophie but i at least know how it works

current=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
max=$(cat /sys/class/backlight/intel_backlight/max_brightness)
min=0

delta=$(($1 * $max / 100))
new=$(($current + $delta))

if (($min > $new)); then
	new=$min
fi

if (($new > $max)); then
	new=$max
fi

echo $new | sudo tee /sys/class/backlight/intel_backlight/brightness
