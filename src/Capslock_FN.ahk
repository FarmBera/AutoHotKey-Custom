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
    ; i::Up
    ; j::Left
    ; k::Down
    ; l::Right

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
    
    i:: ; cursor move up
    While GetKeyState("i","P") {
        MouseMove, 0, (Offset * -1), 0, R
    }
    k:: ; cursor move down
    While GetKeyState("k","P") {
        MouseMove, 0, Offset, 0, R
    }
    j:: ; cursor move left
    While GetKeyState("j","P") {
        MouseMove, (Offset * -1), 0, 0, R
    }
    l:: ; cursor move right
    While GetKeyState("l","P") {
        MouseMove, Offset, 0, 0, R
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
