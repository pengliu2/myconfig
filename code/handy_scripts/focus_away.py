#!/usr/bin/python
import sys
import pygtk
pygtk.require('2.0')
import gtk, wnck
import pengliu_wm_utils

SCREENSIZE = 1920
NUMSCREEN = 2
DISPLAYONSCREEN = [2,1]

def focus_away(direction):
    cur_screen = pengliu_wm_utils.find_global_active()
    while gtk.events_pending():
        gtk.main_iteration(False)
        
    active_win = pengliu_wm_utils.find_active_win(cur_screen)
    xp,yp,wp,hp = active_win.get_geometry()
    display = xp / SCREENSIZE
    
    cur_num = cur_screen.get_number()    
    destdisplay = display
    destscreen = cur_num
    destdisplay += direction
    if destdisplay >= DISPLAYONSCREEN[cur_num]:
        destscreen += 1
        if destscreen >= NUMSCREEN:
            return
        else:
            destdisplay = 0
    elif destdisplay < 0:
        destscreen -= 1
        if destscreen < 0:
            return
        else:
            destdisplay = DISPLAYONSCREEN[destscreen] - 1
            
    if destdisplay == display and destscreen == cur_screen:
        return

    minx = SCREENSIZE * destdisplay
    maxx = minx + SCREENSIZE
    
    dest = wnck.screen_get(destscreen);
    while gtk.events_pending():
        gtk.main_iteration(False)

    top = pengliu_wm_utils.find_top_win_on_screen_within(dest, minx, maxx)
    if top is not None:
        top.activate(0)

if __name__ == "__main__":
    focus_away(int(sys.argv[1]))
