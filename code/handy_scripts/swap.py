#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

def move_to_other_display(win, o):
        m = win.is_maximized_horizontally()
        if m:
            win.unmaximize_horizontally()
        xp,yp,wp,hp = win.get_geometry()
        new_x = xp + o
        win.set_geometry('current','x',new_x,yp,wp,hp)
        if m:
            win.maximize_horizontally()

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
                if xp < 1920:
                    inactive_display = 1
                    offset = 1920
                else:
                    inactive_display = 0
                    offset = -1920
                active_win = win
                break
    if top[inactive_display] is not None:
        move_to_other_display(top[inactive_display], -offset)
        top[inactive_display].activate(0)
    if active_win is not None:
        move_to_other_display(active_win, offset)
        active_win.activate(0)
