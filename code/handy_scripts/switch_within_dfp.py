#!/usr/bin/python
import gi
gi.require_version('Gtk','3.0')
gi.require_version('Wnck','3.0')
from gi.repository import Gtk as gtk
from gi.repository import  Wnck as wnck

SCREENSIZE = 1920

if __name__ == "__main__":
    default = wnck.Screen.get_default()
#    default = pengliu_wm_utils.find_global_active()
    default.force_update()

    display = -1
    top = [None, None, None]
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
