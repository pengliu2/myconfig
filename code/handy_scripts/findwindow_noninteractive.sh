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
    "t")
        window_name='\<Terminal - pengliu@pengliu-Desktop-Ubuntu:'
        ;;
    "b")
        window_name='\<Terminal - pengliu@Peng-T530-Debian:'
        ;;
    "e")
        window_name='\<Emacs -'
        ;;
    "f")
        window_name='Mozilla Firefox$'
        ;;
    "c")
        window_name='\<Calculator'
        ;;
    "m")
        window_name=' Freeplane '
        ;;
    "v")
        window_name='Desktop Ubuntu'
        ;;
    "g")
        window_name=' - Google Chrome$'
        ;;
esac

if [ -z window_name ]; then
    return
fi

window=`wmctrl -l | egrep "$window_name" | head -n 1 | cut -f 1 -d " "`
if [ -z $window ]; then
    exit 0
fi
#echo "window id is [$window]"

#active_window=`xdotool getactivewindow`
#active_window=`printf "0x%08x" $active_window`
#echo "active_window is [$active_window]"
#if [ "$active_window" != "$window" ]
#then
#    move_window_to $active_window 0
#fi
#move_window_to $window 1
wmctrl -i -R $window
