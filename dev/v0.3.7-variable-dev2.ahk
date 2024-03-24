#SingleInstance force
SetCapsLockState, AlwaysOff

Offset = 25 ; mouse movement offset value

CurMoveFast := "Shift"
CurMoveSlow := "Tab"

CurKeyUp := "i"
CurKeyDown := "k"
CurKeyLeft := "j"
CurKeyRight := "l"


#If GetKeyState("Capslock","P")
    ; Arrow Keys

    ; vi Style (hjkl) - disabled
    ; h::Left
    ; j::Down
    ; k::Up
    ; l::Right

    ; ijkl --> arrow keys
    i::Up
    j::Left
    k::Down
    l::Right

    ; wasd --> arrow keys
    w::Up
    a::Left
    s::Down
    d::Right


    ; mouse control
    y::WheelUp
    h::WheelDown
    u::LButton
    o::RButton
    
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

    ; slow movement
    Ctrl & i:: ; cursor move up
    While (GetKeyState("Ctrl","P") && GetKeyState("i","P")) {
        MouseMove, 0, (Offset/2 * -1), 0, R
    }
    Ctrl & k:: ; cursor move down
    While (GetKeyState("Ctrl","P") && GetKeyState("k","P")) {
        MouseMove, 0, Offset/2, 0, R
    }
    Ctrl & j:: ; cursor move left
    While (GetKeyState("Ctrl","P") && GetKeyState("j","P")) {
        MouseMove, (Offset/2 * -1), 0, 0, R
    }
    Ctrl & l:: ; cursor move right
    While (GetKeyState("Ctrl","P") && GetKeyState("l","P")) {
        MouseMove, Offset/2, 0, 0, R
    }


    ; additional keys
    p::PrintScreen
    [::Home
    ]::End
    \::Pause
    
    `;::PgUp
    '::PgDn
    
    .::Insert
    /::Del
    ; m::ScrollLock
    ; ,::Break


    ; media control
    f::Media_Play_Pause
    z::Volume_Mute
    x::Volume_Down
    c::Volume_Up
    v::Media_Prev
    b::Media_Next


    ; function keys
    1::F1
    2::F2
    3::F3
    4::F4
    5::F5
    6::F6
    7::F7
    8::F8
    9::F9
    0::F10
    -::F11
    =::F12


    ; not using now
    ; q::CapsLock ; capslock toggle 


; capslock stand-alone setting
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
