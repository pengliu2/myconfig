#!/usr/bin/python3
import gi
gi.require_version('Wnck', '3.0')
from gi.repository import Wnck as wnck
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk as gtk

if __name__ == "__main__":
    default_screen = wnck.Screen.get_default()

    while gtk.events_pending():
        gtk.main_iteration()

    top = None
    window_list = default_screen.get_windows_stacked()
    if len(window_list) == 0:
        pass
    else:
        for win in window_list:
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            xp,yp,wp,hp = win.get_geometry()
            if xp >= 1920:
                top = win
            if win.is_most_recently_activated():
                break
    if top is not None:
        top.activate(0)
