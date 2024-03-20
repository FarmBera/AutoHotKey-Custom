#SingleInstance force
SetCapsLockState, AlwaysOff

Offset = 25


#If GetKeyState("Capslock","P")
    ; Arrow Keys

    ; ; vi Style (hjkl) - disabled
    ; h::Left
    ; j::Down
    ; k::Up
    ; l::Right

    ; ijkl --> arrow keys - temporary disabled
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
    y::WheelUp ; mouse wheel up
    h::WheelDown ; mouse wheel down
    u::LButton ; mouse left click
    o::RButton ; mouse right click
    
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
    Tab & i:: ; cursor move up
    While (GetKeyState("Tab","P") && GetKeyState("i","P")) {
        MouseMove, 0, (Offset/2 * -1), 0, R
    }
    Tab & k:: ; cursor move down
    While (GetKeyState("Tab","P") && GetKeyState("k","P")) {
        MouseMove, 0, Offset/2, 0, R
    }
    Tab & j:: ; cursor move left
    While (GetKeyState("Tab","P") && GetKeyState("j","P")) {
        MouseMove, (Offset/2 * -1), 0, 0, R
    }
    Tab & l:: ; cursor move right
    While (GetKeyState("Tab","P") && GetKeyState("l","P")) {
        MouseMove, Offset/2, 0, 0, R
    }


    ; additional keys
    p::PrintScreen
    [::Home ; [ braket_open
    ]::End ; ] bracket_close
    
    `;::PgUp
    '::PgDn
    
    .::Insert
    /::Del ; / slash
    ; m::ScrollLock
    ; ,::Break ; Pause/Break


    ; media control
    f::Media_Play_Pause ; play/pause
    z::Volume_Mute ; mute
    x::Volume_Down ; vol down
    c::Volume_Up ; vol up
    v::Media_Prev ; previous song
    b::Media_Next ; next song


    ; function keys: number key line to F1-F12 keys
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


    ; Not Using Now

    ; Capslock ON
    ; c::CapsLock


; Capslock Settings
    ; Capslock stand-alone: Switch Language
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
