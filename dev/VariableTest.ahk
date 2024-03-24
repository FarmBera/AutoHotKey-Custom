#SingleInstance force
SetCapsLockState, AlwaysOff

; Variable Test 01
arr_up := Up
arr_down := Down
arr_left := Left
arr_righ := Right

CurMoveFast := Shift
CurMoveSlow := Tab

CurKeyUp := i
CurKeyDown := k
CurKeyLeft := j
CurKeyRight := l


; Variable Test 02
; arr_up := "Up"
; arr_down := "Down"
; arr_left := "Left"
; arr_righ := "Right"

; CurMoveFast := "Shift"
; CurMoveSlow := "Tab"

; CurKeyUp := "i"
; CurKeyDown := "k"
; CurKeyLeft := "j"
; CurKeyRight := "l"


#If GetKeyState("Capslock","P")
    ; Arrow Keys

    ; Apply Test List
    i::Up
    ; CurKeyUp::Up
    ; i::arr_up
    ; CurKeyUp::arr_up


    ; i::Up
    j::Left
    k::Down
    l::Right

    ; fast movement
    Shift & i:: ; cursor move up
    While (GetKeyState("Shift","P") && GetKeyState("i","P")) {
        MouseMove, 0, (Offset * -1), 0, R
    }
    Shift & k:: ; cursor move down
    While (GetKeyState("Shift","P") && GetKeyState("k","P")) {
        MouseMove, 0, Offset, 0, R
    }
    Shift & j:: ; cursor move left
    While (GetKeyState("Shift","P") && GetKeyState("j","P")) {
        MouseMove, (Offset * -1), 0, 0, R
    }
    Shift & l:: ; cursor move right
    While (GetKeyState("Shift","P") && GetKeyState("l","P")) {
        MouseMove, Offset, 0, 0, R
    }

#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
