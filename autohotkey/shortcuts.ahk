#Persistent
SetTitleMatchMode, RegEx  ; Set title match mode to regular expression

; Disable Alt key from activating menu bar
~Alt::Return  ; Blocks Alt from activating the menu by itself
; !::Return     ; Blocks the menu bar activation with any Alt key press

MinimizeRestore(windowTitles*) {
    for index, windowTitle in windowTitles {
        IfWinExist, %windowTitle%
        {
            ; Get the window's ID
            WinGet, targetWindow, ID, %windowTitle%
            
            ; Check if window is maximized
            WinGet, isMaximized, MinMax, ahk_id %targetWindow%
            
            ; Activate the window
            WinActivate, ahk_id %targetWindow%

            ; Minimize the window
            ;WinMinimize, ahk_id %targetWindow%

            ; Restore window to previous state
            ;if (isMaximized = 1) {
            ;    WinMaximize, ahk_id %targetWindow%
            ;} else {
            ;    WinRestore, ahk_id %targetWindow%
            ;}
            return  ; Exit after finding and processing the first matching window
        }
    }
    ; If we get here, none of the windows were found
    MsgBox, No window matching any of the provided titles was found.
}

MaximizeAllWindows() {
    WinGet, windows, List

    Loop, %windows% {
        windowID := windows%A_Index%
        if (IsMaximizableAppWindow(windowID))
            WinMaximize, ahk_id %windowID%
    }
}

IsMaximizableAppWindow(windowID) {
    WinGetTitle, title, ahk_id %windowID%
    if (title = "")
        return false

    WinGetClass, class, ahk_id %windowID%
    if (class = "Shell_TrayWnd" || class = "Progman" || class = "WorkerW")
        return false

    WinGet, style, Style, ahk_id %windowID%
    if !(style & 0x10000000)  ; WS_VISIBLE
        return false

    if !(style & 0x00010000)  ; WS_MAXIMIZEBOX
        return false

    WinGet, exStyle, ExStyle, ahk_id %windowID%
    if (exStyle & 0x00000080)  ; WS_EX_TOOLWINDOW
        return false

    WinGet, minMax, MinMax, ahk_id %windowID%
    if (minMax = -1)
        return false

    return !IsWindowCloaked(windowID)
}

IsWindowCloaked(windowID) {
    cloaked := 0
    DllCall("dwmapi\DwmGetWindowAttribute", "Ptr", windowID, "UInt", 14, "Int*", cloaked, "UInt", 4)
    return cloaked
}

; Shortcut for maximizing all visible app windows
#+f::
    MaximizeAllWindows()
return

; Shortcut for Mozilla Firefox window
!f3::
#m::  ; Alt+F1 hotkey to activate the window
;    IfWinExist, .*Mozilla Firefox$
;    {
;        WinActivate  ; Activate the window with title that ends with "Mozilla Firefox"
;    }
;    else
;    {
;        MsgBox, No window with title ending with "Mozilla Firefox" was found.
;    }
     MinimizeRestore(".*Mozilla Firefox$")
return

; Shortcut for Google Chrome window
!f2::
#c::  ; Alt+F2 hotkey to activate the Chroime window
    IfWinExist, .*Google Chrome$
    {
        WinActivate  ; Activate the window with title that ends with "Google Chrome"
    }
    else
    {
        MsgBox, No window with title ending with "Google Chrome" was found.
    }
return

; Shortcut for Emacs window
#e::  ; Alt+F1 hotkey to activate the window
    MinimizeRestore("^Emacs - .*", "^'Emacs - .*", "^\[WARN:COPY MODE\] Emacs - .*")
return

; Shortcut for device window (Flashing)
#w::
#d::
#f::
     MinimizeRestore("^pengliu@.*", "^lab@.*", "^Windows PowerShell$", "^labuser@.*", "^jenkins@.*")
return

; Shortcut for Slack window
!f9::
#s::  ; Alt+F8 hotkey to activate the window
    IfWinExist, .* - Slack$
    {
        WinActivate  ; Activate the window with title that ends with " - Slack"
    }
    else
    {
        MsgBox, No window with title ending with " - Slack" was found.
    }
return


; Shortcut for Joplin window
!f1::
#j::   ; Win+j hotkey to active the window
       MinimizeRestore("^Joplin$")
return

; Shortcut for Powershell window
#f5::   ; Win+w hotkey to active the window
    IfWinExist, ^Windows PowerShell$
    {
        WinActivate
    }
    else
    {
        MsgBox, No window with title "Windows PowerShell" was found.
    }
return

; Shortcut for MINGW64, the build window
;#b::
;     MinimizeRestore("^Hovi - NVIDIA.COM.*")
;return

; Shortcut for Cursor
#v::
     MinimizeRestore(".* - Cursor$")
return

; Shortcut for p4 pengliu_bugfix_main
#p::
     MinimizeRestore("^pengliu_bugfixmain.*")
return

; Shortcut for Outlook
#o::
     MinimizeRestore(".* - Outlook$")
return

; Shortcut for Teams
#t::
     MinimizeRestore(".*Microsoft Teams$")
return

; Shortcut for Onenote
#n::
#q::
    MinimizeRestore(".* - OneNote")
return
