#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

if __name__ == "__main__":
    default = wnck.screen_get_default()

    while gtk.events_pending():
        gtk.main_iteration(False)

    top = [None, None]
    display = 1
    window_list = default.get_windows_stacked()
    active_win = None
    x = -1
    w = -1
    offset = 0
    if len(window_list) == 0:
        pass
    else:
        for win in window_list:
            xp,yp,wp,hp = win.get_geometry()
            if win.is_most_recently_activated():
                if xp < 1920:
                    display = 0
                    offset = 1920
                else:
                    display = 1
                    offset = -1920
                active_win = win
                x = xp
                w = wp
                break
            if xp < 1920:
                top[0] = win
            else:
                top[1] = win
    if active_win is not None:
        m = active_win.is_maximized()
        if m:
            active_win.unmaximize()
        xp,yp,wp,hp = active_win.get_geometry()
        new_x = xp + offset
        active_win.set_geometry('current','x',new_x,yp,wp,hp)
        if m:
            active_win.maximize()
    if top[display] is not None:
        top[display].activate(0)
