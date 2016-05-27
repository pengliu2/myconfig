#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck
import pengliu_wm_utils

SCREENSIZE = 1920

if __name__ == "__main__":
    # default = wnck.screen_get_default()
    default = pengliu_wm_utils.find_global_active()
    while gtk.events_pending():
        gtk.main_iteration(False)

    display = -1
    top = [None,None]
    window_list = default.get_windows_stacked()
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
            display = xp / SCREENSIZE
            if win.is_active() or count == numwindows:
                break
            top[display] = win

    if top[display] is not None:
        top[display].activate(0)
