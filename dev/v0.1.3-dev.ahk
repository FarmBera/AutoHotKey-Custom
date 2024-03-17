SetCapsLockState, AlwaysOff


#If GetKeyState("Capslock","P")
    ; Arrow Keys
    ;; ijkl --> arrow keys
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
    {[}::Home ; [ braket_open
    {]}::End ; ] bracket_close

    {;}::PgUp ; ; Semicolon
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
    y::WheelUp
    h::WheelDown
    ; t::
    ; g::




    ; Not Using Now

    ; p::+Enter

    ; h::Home
    ; SC027::End

    ; n::^Home
    ; m::^End

    ; 7::PgUp
    ; 8::PgDn

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
