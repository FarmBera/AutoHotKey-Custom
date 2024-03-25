#SingleInstance Force
SetCapsLockState, AlwaysOff
SetDefaultMouseSpeed, 0


Offset = 25 ; mouse movement offset value
OffsetSlow = Offset/2 ; slow mouse movement


; numberpad actions
Numpad0::^z ; Ctrl + Z --> Undo
    return
NumpadDot::^y ; Ctrl + Y --> Redo
    return
NumpadAdd::^s ; Ctrl + S --> Save
    return

; powerpoint pen tools
Numpad1:: ; pen 1
    CoordMode, Mouse, Screen
    MouseClick, Left, 185, 140, 1
    return
Numpad2:: ; pen 2
    CoordMode, Mouse, Screen
    mouseclick, Left, 230, 140, 1
    return
Numpad3:: ; pen 3
    CoordMode, Mouse, Screen
    mouseclick, Left, 280, 140, 1
    return
Numpad4:: ; highlighter 1
    CoordMode, Mouse, Screen
    mouseclick, Left, 370, 140, 1
    return
Numpad5:: ; highlighter 2
    CoordMode, Mouse, Screen
    mouseclick, Left, 420, 140, 1
    return
Numpad6:: ; highlighter 3
    CoordMode, Mouse, Screen
    mouseclick, Left, 470, 140, 1
    return
Numpad7:: ; cursor tool
    CoordMode, Mouse, Screen
    mouseclick, Left, 30, 140, 1
    return
Numpad8:: ; lasso tool
    CoordMode, Mouse, Screen
    mouseclick, Left, 80, 140, 1
    return
Numpad9:: ; eraser tool
    CoordMode, Mouse, Screen
    mouseclick, Left, 130, 140, 1
    return


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
    Home:: ; cursor move up
        While (GetKeyState("Home","P")) {
            MouseMove, 0, (Offset * -1), 0, R
        }
    End:: ; cursor move down
        While (GetKeyState("End","P")) {
            MouseMove, 0, Offset, 0, R
        }
    Del:: ; cursor move left
        While (GetKeyState("Del","P")) {
            MouseMove, (Offset * -1), 0, 0, R
        }
    PgDn:: ; cursor move right
        While (GetKeyState("PgDn","P")) {
            MouseMove, Offset, 0, 0, R
        }

    ; slow movement
    Up:: ; cursor move up
        While (GetKeyState("Up","P")) {
            MouseMove, 0, (OffsetSlow * -1), 0, R
        }
    Down:: ; cursor move down
        While (GetKeyState("Down","P")) {
            MouseMove, 0, OffsetSlow, 0, R
        }
    Left:: ; cursor move left
        While (GetKeyState("Left","P")) {
            MouseMove, (OffsetSlow * -1), 0, 0, R
        }
    Right:: ; cursor move right
        While (GetKeyState("Right","P")) {
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
