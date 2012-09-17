#!/usr/bin/python
import pygtk
pygtk.require('2.0')
import gtk, wnck

key_to_name = {
        'e':('\<Emacs -',       0),
        't':('\<Terminal -',    0),
        'f':('Pentadactyl$',    0),
        'c':('\<Calculator',    0),
        'E':('\<Emacs -',       1),
        'T':('\<Terminal -',    1),
        'F':('Pentadactyl$',    1),
        'C':('\<Calculator',    1),
        }

def move_to_other_display(w, o):
        m = w.is_maximized_horizontally()
        if m:
            w.unmaximize_horizontally()
        xp,yp,wp,hp = w.get_geometry()
        new_x = xp + o
        w.set_geometry('current','x',new_x,yp,wp,hp)
        if m:
            w.maximize_horizontally()

def on_key_press_event(widget, event):
        
        return

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
            if win.is_most_recently_activated():
                if xp < 1920:
                    inactive_display = 1
                    offset = 1920
                else:
                    inactive_display = 0
                    offset = -1920
                active_win = win
                break
            if xp < 1920:
                top[0] = win
            else:
                top[1] = win
    if top[inactive_display] is not None:
        move_to_other_display(top[inactive_display], -offset)
        top[inactive_display].activate(0)
    if active_win is not None:
        move_to_other_display(active_win, offset)
        active_win.activate(0)
