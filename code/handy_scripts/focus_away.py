#!/usr/bin/python3
import sys

import gi
gi.require_version('Gtk','3.0')
gi.require_version('Wnck','3.0')
from gi.repository import Gtk as gtk
from gi.repository import  Wnck as wnck

import pengliu_wm_utils

MONITOR = 1920

def focus_away(direction):
    cur_screen = wnck.Screen.get_default()
    cur_screen.force_update()
    screen_w = cur_screen.get_width()
    n_display = int(screen_w / MONITOR)
    #print("number of display:{}".format(n_display))

    active_win = pengliu_wm_utils.find_active_win(cur_screen)
    xp,yp,wp,hp = active_win.get_geometry()
    #print("xp is {}, wp is {}".format(xp, wp))
    
    display = int(xp / MONITOR)
    #print("currnt display: {}".format(display))
    
    destdisplay = display
    destdisplay += direction
    destdisplay = 0 if destdisplay < 0 else destdisplay;
    destdisplay = n_display - 1 if destdisplay >= n_display else destdisplay;
    #print("destdisplay: {}".format(destdisplay))
            
    if destdisplay == display:
        return

    top = [None, None, None]
    window_list = cur_screen.get_windows_stacked()
    #print("window list:")
    #for w in window_list:
    #    print("{}".format(w))
        
    if len(window_list) == 0:
        return
    else:
        numwindows = len(window_list)
        count = 0
        for win in window_list:
            count += 1
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            
            xp,yp,wp,hp = win.get_geometry()
            display = int(xp / MONITOR)
            if win.is_active() or count == numwindows:
                break
            top[display] = win

    if top[destdisplay] is not None:
        top[destdisplay].activate(0)

if __name__ == "__main__":
    focus_away(int(sys.argv[1]))
