#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

if __name__ == "__main__":
    default = wnck.screen_get_default()

    while gtk.events_pending():
        gtk.main_iteration(False)

    top = None
    window_list = default.get_windows_stacked()
    if len(window_list) == 0:
        pass
    else:
        for win in window_list:
            xp,yp,wp,hp = win.get_geometry()
            if xp >= 1920:
                top = win
            if win.is_most_recently_activated():
                break
    if top is not None:
        top.activate(0)
