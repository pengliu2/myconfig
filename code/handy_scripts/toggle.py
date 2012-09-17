#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

if __name__ == "__main__":
    default = wnck.screen_get_default()

    while gtk.events_pending():
        gtk.main_iteration(False)

    top = [None, None]
    window_list = default.get_windows_stacked()
    if len(window_list) == 0:
        print "No Windows Found"
    else:
        for win in window_list:
            xp,yp,wp,hp = win.get_geometry()
            print '***[%s] at %s,%s, %s'%(win.get_name(), xp,yp, win.is_most_recently_activated())
            if win.is_most_recently_activated():
                if xp < 1920:
                    desired_dfp = 1
                else:
                    desired_dfp = 0
                break
            else:
                if xp < 1920:
                    top[0] = win
                else:
                    top[1] = win
    if top[desired_dfp] is not None:
        top[desired_dfp].activate(0)
