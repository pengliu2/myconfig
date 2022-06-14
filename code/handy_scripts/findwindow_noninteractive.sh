#!/bin/bash
#++++++++++++++++
# Monitor Switch
#
# Moves currently focused window from one monitor to the other.
# Designed for a system with two monitors.
# Script should be triggered using a keyboard shortcut.
#++++++++++++++++
# width of left monitor
w_l_monitor=1920
window_key=$1

function move_window_to
{
    to_move=$1
    desired_display=$2

    x=`xwininfo -id $to_move | grep "Absolute upper-left X" | awk '{print $4}'`
    y_abs=`xwininfo -id $to_move | grep "Absolute upper-left Y" | awk '{print $4}'`
    y_rel=`xwininfo -id $to_move | grep "Relative upper-left Y" | awk '{print $4}'`
    w=`xwininfo -id $to_move | grep "Width" | awk '{print $2}'`

    #echo "x is $x, y_abs is $y_abs, y_rel is $y_rel, window is [$to_move], desired_display is [$desired_display]"

    if [ $desired_display -eq 1 ]
    then
        #echo "moving $to_move to right display"
        if [ $x -lt $w_l_monitor ]; then
            # unmaximize
            wmctrl -i -r $to_move -b remove,maximized_horz,maximized_vert
        	# window on left monitor
        	new_x=$(($x+$w_l_monitor))
            #move window. Need to subtract the relative y-position.
            new_y=$(($y_abs-$y_rel))
            #echo "new $new_x,$new_y"
            xdotool windowmove $to_move $new_x $new_y
            if [ "$w" -eq "$w_l_monitor" ]; then
        	#echo "maximize $to_move"
        	    wmctrl -i -r $to_move -b add,maximized_horz,maximized_vert
            fi
        fi
    else
        #echo "moving $to_move to left display"
        if [ $x -ge $w_l_monitor ]; then
            #echo "moving window"
            # unmaximize
            wmctrl -i -r $to_move -b remove,maximized_horz,maximized_vert
        	# window on right monitor
        	new_x=$(($x-$w_l_monitor))
            #move window. Need to subtract the relative y-position.
            new_y=$(($y_abs-$y_rel))
            #echo "new $new_x,$new_y"
            xdotool windowmove $to_move $new_x $new_y
            if [ "$w" -eq "$w_l_monitor" ]; then
        	# maximize
        	    wmctrl -i -r $to_move -b add,maximized_horz,maximized_vert
            fi
        fi
    fi
}

case "$window_key" in
    "d")
        window_name='^Terminal -'
        ;;
    "b")
        window_name='^pengliu@pengliu-wfh-debian'
        ;;
    "e")
        window_name='^Emacs -'
        ;;
    "n")
        window_name='^Code -'
        ;;
    "f")
        window_name='Mozilla Firefox$'
        ;;
    "c")
        window_name='^Terminal'
        ;;
    "m")
        window_name='Mozilla Thunderbird$'
        ;;
    "v")
        window_name='Desktop Ubuntu'
        ;;
    "g")
        window_name=' - Google Chrome$'
        ;;
    "s")
        window_name='^Slack'
        ;;
    "w")
        window_name=' - Google Chrome on pengliu-desktop-ubuntu18$'
        ;;
    "t")
        window_name=' Microsoft Teams$'
        ;;
    "i")
        window_name='Microsoft​ Edge Beta$'
        ;;
    "o")
        window_name='Okular$'
        ;;
esac

if [ -z window_name ]; then
    return
fi

offset=`wmctrl -l | cut -d " " -f 5- | egrep -n "$window_name" | cut -d ":" -f 1 | head -n 1`
if [ -z $offset ]; then
    exit 0
fi
#echo "offset is [$offset]"

offsets=`wmctrl -l | cut -d " " -f 5- | egrep -n "$window_name" | cut -d ":" -f 1`

echo "$offsets" | while read offset; do
windowid=`wmctrl -l | head -n $offset | tail -n +$offset | cut -f 1 -d " "`
#echo "window id is [$windowid]"

#active_window=`xdotool getactivewindow`
#active_window=`printf "0x%08x" $active_window`
#echo "active_window is [$active_window]"
#if [ "$active_window" != "$window" ]
#then
#    move_window_to $active_window 0
#fi
#move_window_to $window 1
wmctrl -i -a $windowid
done
