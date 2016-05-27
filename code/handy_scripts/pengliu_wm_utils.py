import pygtk
pygtk.require('2.0')
import gtk, wnck

MAX_SCREEN_NUM = 4

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

def find_active_win(screen):
    window_list = screen.get_windows_stacked()
    top = None
    if len(window_list) > 0:
        for win in window_list:
            if win.get_name() == 'xfce4-panel' or win.get_name() == 'Desktop':
                continue
            top = win
            if win.is_active():
                break
    print top.get_name()
    return top
    
def find_global_active():
    i = 0
    screen = wnck.screen_get_default()
    while gtk.events_pending():
        gtk.main_iteration(False)
    wl = screen.get_windows_stacked()
    for j in range(len(wl)-1,0,-1):
        if wl[j].is_active():
            return wl[j].get_screen()
        
    for i in range(0,MAX_SCREEN_NUM,1):
        screen = wnck.screen_get(i)
        if screen == None:
            break
        
        while gtk.events_pending():
            gtk.main_iteration(False)

        wl = screen.get_windows_stacked()

        for j in range(len(wl)-1,0,-1):
            j -= 1
            if wl[j].is_active():
                return wl[j].get_screen()
        i += 1
    return None
