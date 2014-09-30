#!/bin/bash

xrdb ~/.Xresources
setxkbmap -option caps:escape
xmodmap ~/.Xmodmap

exec i3

xrandr --output eDP1 --auto
xrandr --output HDMI2 --auto --right-of eDP1

# export DISPLAY=:0
# 

# xinput set-int-prop 11 "Device Enabled" 8 0

# autocutsel -fork &
# # autocutsel -selection PRIMARY -fork &

