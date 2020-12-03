#!/bin/bash

BAT_TMP=/tmp/batterytmp
LOW=10

let bat="$(acpi -b | awk -F, '{print gensub(/^.|.$/,"","g",$2)}')"
if [[ -f "$BAT_TMP" && $bat > $LOW ]]; then
        rm -f "$BAT_TMP"
elif (( $bat <= $LOW )); then
	notify-send -u critical "WARNING" "$bat% battery left"
        touch "$BAT_TMP"
fi

echo "$bat%"
