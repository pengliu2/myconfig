#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

if __name__ == "__main__":
    default = wnck.screen_get_default()

    while gtk.events_pending():
        gtk.main_iteration(False)

    focus = 1
    top = [None, None]
    window_list = default.get_windows_stacked()
    if len(window_list) == 0:
        print "No Windows Found"
    else:
        for win in window_list:
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            xp,yp,wp,hp = win.get_geometry()
            if win.is_most_recently_activated():
                if xp < 1920:
                    focus = 0
                else:
                    focus = 1
                break
            if xp < 1920:
                top[0] = win
            else:
                top[1] = win
    if top[focus] is not None:
        top[focus].activate(0)
