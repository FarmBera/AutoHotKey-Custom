#SingleInstance force
SetCapsLockState, AlwaysOff

; Variable Test 01
arr_up := Up
arr_down := Down
arr_left := Left
arr_righ := Right

CurMoveFast := Shift
CurMoveSlow := Tab

CurKeyUp := "i"
CurKeyDown := k
CurKeyLeft := j
CurKeyRight := l


; Arrow Keys

; Apply Test List
; i::Up
%CurKeyUp%::Up
; %CurKeyUp%::Up ; ERR
; %CurKeyUp%::Up ; ERR
; i::arr_up
; CurKeyUp::arr_up


; i::Up
j::Left
k::Down
l::Right
