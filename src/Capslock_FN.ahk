#SingleInstance force
SetCapsLockState, AlwaysOff


Offset = 25 ; mouse movement offset value
OffsetSlow = Offset/2 ; slow mouse movement


#If GetKeyState("Capslock","P")
    q::CapsLock


    ; ijkl arrow
    i::Up
    j::Left
    k::Down
    l::Right
    ; wasd arrow
    w::Up
    a::Left
    s::Down
    d::Right


    ; mouse control
    e::WheelDown
    r::WheelUp
    ; t::WheelUp
    ; g::WheelDown
    y::WheelUp
    h::WheelDown
    u::LButton
    o::RButton

    ; fast movement
    LAlt & i:: ; cursor move up
        While (GetKeyState("LAlt","P") && GetKeyState("i","P")) {
            MouseMove, 0, (Offset * -1), 0, R
        }
    LAlt & k:: ; cursor move down
        While (GetKeyState("LAlt","P") && GetKeyState("k","P")) {
            MouseMove, 0, Offset, 0, R
        }
    LAlt & j:: ; cursor move left
        While (GetKeyState("LAlt","P") && GetKeyState("j","P")) {
            MouseMove, (Offset * -1), 0, 0, R
        }
    LAlt & l:: ; cursor move right
        While (GetKeyState("LAlt","P") && GetKeyState("l","P")) {
            MouseMove, Offset, 0, 0, R
        }

    ; slow movement
    Tab & i:: ; cursor move up
        While (GetKeyState("Tab","P") && GetKeyState("i","P")) {
            MouseMove, 0, (OffsetSlow * -1), 0, R
        }
    Tab & k:: ; cursor move down
        While (GetKeyState("Tab","P") && GetKeyState("k","P")) {
            MouseMove, 0, OffsetSlow, 0, R
        }
    Tab & j:: ; cursor move left
        While (GetKeyState("Tab","P") && GetKeyState("j","P")) {
            MouseMove, (OffsetSlow * -1), 0, 0, R
        }
    Tab & l:: ; cursor move right
        While (GetKeyState("Tab","P") && GetKeyState("l","P")) {
            MouseMove, OffsetSlow, 0, 0, R
        }
    
    Return


    ; additional keys
    Esc::`

    p::PrintScreen
    [::Home
    ]::End

    `;::PgUp
    '::PgDn

    .::Insert
    /::Del
    ; m::ScrollLock
    ; ,::Break
    ; \::Pause


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


; capslock stand-alone
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
