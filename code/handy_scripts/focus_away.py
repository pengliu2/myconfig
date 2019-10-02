#!/usr/bin/python
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
    n_display = screen_w / MONITOR

    active_win = pengliu_wm_utils.find_active_win(cur_screen)
    xp,yp,wp,hp = active_win.get_geometry()
    display = xp / MONITOR
    
    destdisplay = display
    destdisplay += direction
    destdisplay = 0 if destdisplay < 0 else destdisplay;
    destdisplay = n_display - 1 if destdisplay >= n_display else destdisplay; 
            
    if destdisplay == display:
        return

    top = [None, None, None]
    window_list = cur_screen.get_windows_stacked()
    if len(window_list) == 0:
        print "No Windows Found"
    else:
        numwindows = len(window_list)
        count = 0
        for win in window_list:
            count += 1
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            
            xp,yp,wp,hp = win.get_geometry()
            display = xp / MONITOR
            if win.is_active() or count == numwindows:
                break
            top[display] = win

    if top[destdisplay] is not None:
        top[destdisplay].activate(0)

if __name__ == "__main__":
    focus_away(int(sys.argv[1]))
