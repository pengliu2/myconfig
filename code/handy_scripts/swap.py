#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

def move_to_other_display(win, o):
        m = win.is_maximized()
        if m:
            win.unmaximize()
        xp,yp,wp,hp = win.get_geometry()
        new_x = xp + o
        win.set_geometry('current','x',new_x,yp,wp,hp)
        if m:
            win.maximize()

if __name__ == "__main__":
    default = wnck.screen_get_default()

    while gtk.events_pending():
        gtk.main_iteration(False)

    top = [None, None]
    inactive_display = 0
    window_list = default.get_windows_stacked()
    active_win = None
    offset = 0
    if len(window_list) == 0:
        pass
    else:
        for win in window_list:
            xp,yp,wp,hp = win.get_geometry()
            if xp < 1920:
                top[0] = win
            else:
                top[1] = win
            if win.is_most_recently_activated():
                break
    move_to_other_display(top[0], 1920)
    top[0].activate(0)
    move_to_other_display(top[1], -1920)
    top[1].activate(0)
