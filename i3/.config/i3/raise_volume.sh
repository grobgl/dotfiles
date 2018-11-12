#!/bin/bash
x=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
if [[ $x -le 130 ]]
then
    pactl set-sink-volume 0 +10%
else
    pactl set-sink-volume 0 140%
fi

