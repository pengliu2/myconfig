#!/bin/bash

w_l_monitor=1920
n_monitor=2
right_bound=$(($w_l_monitor*$n_monitor))

window=`xdotool getactivewindow`
w=`xwininfo -id $window | grep "Width" | awk '{print $2}'`

# unmaximize
wmctrl -i -r $window -b remove,maximized_vert,maximized_horz

# get active window position and width
x=`xwininfo -id $window | grep "Absolute upper-left X" | awk '{print $4}'`
y_abs=`xwininfo -id $window | grep "Absolute upper-left Y" | awk '{print $4}'`
y_rel=`xwininfo -id $window | grep "Relative upper-left Y" | awk '{print $4}'`

# calculate new x position
new_x=$(($x+$w_l_monitor))
if [ "$new_x" -ge "$right_bound" ]; then
    new_x=$(($new_x-$right_bound))
fi
#move window. Need to subtract the relative y-position.
new_y=$(($y_abs-$y_rel))
xdotool windowmove $window $new_x $new_y

if [ "$w" -eq "$w_l_monitor" ]; then
	# maximize
	wmctrl -i -r $window -b add,maximized_vert,maximized_horz
fi

