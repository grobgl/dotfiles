#! /bin/bash

# hidpi
xrandr --dpi 220

# xrdb -load ~/.Xresources
xrdb -I$HOME ~/.Xresources

# remap caps lock to escape
setxkbmap -option caps:escape

# start redshift
redshift &

# start i3
exec i3
