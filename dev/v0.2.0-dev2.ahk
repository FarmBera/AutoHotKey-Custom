SetCapsLockState, AlwaysOff


#If GetKeyState("Capslock","P")
    ; Arrow Keys

    ; ; vi Style (hjkl)
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


    ; additional keys
    p::PrintScreen
    [::Home ; [ braket_open
    ]::End ; ] bracket_close

    ; SC033::PgUp ; ; Semicolon
    ;::PgUp ; ; Semicolon
    ; :;::PgUp ; ; Semicolon
    `;::PgUp
    '::PgDn

    .::Insert
    /::Del ; / slash

    ; m::ScrollLock
    ; ,::Break ; Pause/Break


    ; Function Keys: number key line to F1-F12 keys
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


    ; media control
    f::Media_Play_Pause ; play/pause
    z::Volume_Mute ; mute
    x::Volume_Down ; vol down
    c::Volume_Up ; vol up
    v::Media_Prev ; previous song
    b::Media_Next ; next song


    ; mouse control
    y::WheelUp ; 마우스 휠 위로
    h::WheelDown ; 마우스 휠 아래로
    u::LButton ; 마우스 좌클릭
    o::RButton ; 마우스 우클릭



    ; Not Using Now

    ; Capslock ON
    ; c::CapsLock


#If (GetKeyState("Capslock","P") && GetKeyState("e", "P"))
    e::Return ; block key input

    ; i:: ; mouse cursor up
    ; j:: ; mouse cursor left
    ; k:: ; mouse cursor down
    ; l:: ; mouse cursor right

    ; u::LButton
    ; o::RButton
    ; y::WheelUp
    ; h::WheelDown


; Capslock Settings
    ; Capslock stand-alone: Switch Language
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
