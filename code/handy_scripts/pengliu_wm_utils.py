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
    return top

def find_active_win_dbg(screen_no):
    wl = wnck.screen_get(screen_no).get_windows_stacked()
    for w in range(len(wl)-1,0,-1):
        if (wl[w].is_active()):
            print "%s - Active"%(wl[w].get_name())
        else:
            print wl[w].get_name()
    
def find_global_active():
    """
    return: current screen
    catch: each screen might have one active window. so if there's 2, use default screen.
    """
    count = 0
    s = None
    for i in range(0,MAX_SCREEN_NUM,1):
        screen = wnck.screen_get(i)
        if screen == None:
            continue
        screen.force_update()

        active_win = screen.get_active_window()
        if active_win is not None:
            s = screen
            count += 1
    if count == 1:
        return s
    elif count > 1:
        return wnck.screen_get_default()
    return None
