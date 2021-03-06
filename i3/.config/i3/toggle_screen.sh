#!/bin/bash
EXTERNAL_DPI=244
# EXTERNAL_OUTPUT="DP1-2"
EXTERNAL_OUTPUT="DP-1-1-2"
# INTERNAL_OUTPUT="eDP1"
INTERNAL_OUTPUT="eDP-1-1"

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_mode.dat" ] ; then
  monitor_mode="all"

# otherwise read the value from the file
else
  monitor_mode=`cat /tmp/monitor_mode.dat`
fi

if [ $monitor_mode = "all" ]; then
        monitor_mode="EXTERNAL"
        xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --scale 1.5x1.5 --panning 5760x3240 --auto
        feh --bg-scale ~/.wallpapers/scandinavian_forest_fog.jpg
elif [ $monitor_mode = "EXTERNAL" ]; then
        monitor_mode="INTERNAL"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --off
        feh --bg-scale ~/.wallpapers/scandinavian_forest_fog.jpg
elif [ $monitor_mode = "INTERNAL" ]; then
        monitor_mode="CLONES"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --same-as $INTERNAL_OUTPUT
        feh --bg-scale ~/.wallpapers/scandinavian_forest_fog.jpg
else
        monitor_mode="all"
        xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --scale 1.5x1.5 --auto --left-of $INTERNAL_OUTPUT
        feh --bg-scale ~/.wallpapers/scandinavian_forest_fog.jpg
fi
echo "${monitor_mode}" > /tmp/monitor_mode.dat
