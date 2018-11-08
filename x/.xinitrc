#! /bin/bash

# hidpi
xrandr --dpi 220

# xrdb -load ~/.Xresources
xrdb -I$HOME ~/.Xresources

# remap caps lock to escape
setxkbmap -option caps:escape

# modifier keys
xmodmap ~/.Xmodmap

# keystroke repeat rate
xset r rate 200 30

# set background picture
feh --bg-scale ~/.wallpapers/scandinavian_forest_fog.jpg

# start redshift
redshift &

# start udiskie
udiskie -t &

# start insync
insync start

# start blueman applet
blueman-applet &

# start i3
exec i3
