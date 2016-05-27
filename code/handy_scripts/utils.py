import sys
import pygtk
pygtk.require('2.0')
import gtk, wnck

def find_top_win_on_screen_within(screen, minx, maxx):
    window_list = screen.get_windows_stacked()
    top = None
    if len(window_list) > 0:
        for win in window_list:
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            xp,yp,wp,hp = win.get_geometry()
            if xp >= minx and xp < maxx:
                top = win
                if win.is_most_recently_activated() or win.is_active():
                    break
    return top
