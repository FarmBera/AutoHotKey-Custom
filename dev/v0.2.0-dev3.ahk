;The Offset variable controls pointer speed
;Ctrl + Arrow keys = move mouse
;Ctrl + comma = left click
;Ctrl + period = right click
SetCapsLockState, AlwaysOff

#SingleInstance force

Offset = 25

; ^Up::MouseMove, 0, (Offset * -1), 0, R
; ^Down::MouseMove, 0, Offset, 0, R
; ^Left::MouseMove, (Offset * -1), 0, 0, R
; ^Right::MouseMove, Offset, 0, 0, R

#If GetKeyState("Capslock","P")
    ; e::Return
    ; Arrow Keys

    ; ; vi Style (hjkl)
    ; h::Left
    ; j::Down
    ; k::Up
    ; l::Right

    ; ijkl --> arrow keys
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
    y::WheelUp ; 마우스 휠 위로
    h::WheelDown ; 마우스 휠 아래로
    u::LButton ; 마우스 좌클릭
    o::RButton ; 마우스 우클릭
    
    i::
    While GetKeyState("i","P") {
        MouseMove, 0, (Offset * -1), 0, R
    }
    k::
    While GetKeyState("k","P") {
        MouseMove, 0, Offset, 0, R
    }
    j::
    While GetKeyState("j","P") {
        MouseMove, (Offset * -1), 0, 0, R
    }
    l::
    While GetKeyState("l","P") {
        MouseMove, Offset, 0, 0, R
    }


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


    ; media control
    f::Media_Play_Pause ; play/pause
    z::Volume_Mute ; mute
    x::Volume_Down ; vol down
    c::Volume_Up ; vol up
    v::Media_Prev ; previous song
    b::Media_Next ; next song


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


    ; Test 03
    ; e & i::
    ; While GetKeyState("i","P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; e & k::
    ; While GetKeyState("k","P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; e & j::
    ; While GetKeyState("j","P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; e & l::
    ; While GetKeyState("l","P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }


    ; Not Using Now

    ; Capslock ON
    ; c::CapsLock
    
    ; e & Up::
    ; While GetKeyState("Up","P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }ㅐ
    ; e & Down::
    ; While GetKeyState("Down","P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; e & Left::
    ; While GetKeyState("Left","P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; e & Right::
    ; While GetKeyState("Right","P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }



; #If (GetKeyState("Capslock","P") && GetKeyState("e", "P"))
;     e::Return ; block key input

    

    ; arrow_key_up = i
    ; arrow_key_down = k
    ; arrow_key_left = j
    ; arrow_key_right = l

    ; e & i::
    ; While GetKeyState(i,"P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; e & k::
    ; While GetKeyState(k,"P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; e & j::
    ; While GetKeyState(j,"P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; e & l::
    ; While GetKeyState(l,"P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }

    ; ver Alpha
    ; ^Up::MouseMove, 0, (Offset * -1), 0, R
    ; ^Down::MouseMove, 0, Offset, 0, R
    ; ^Left::MouseMove, (Offset * -1), 0, 0, R
    ; ^Right::MouseMove, Offset, 0, 0, R

    ; ver Beta
    ; ^Up::
    ; While GetKeyState("Up","P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; ^Down::
    ; While GetKeyState("Down","P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; ^Left::
    ; While GetKeyState("Left","P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; ^Right::
    ; While GetKeyState("Right","P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }

    ; ver Test 01e
    ; i::
    ; While GetKeyState("i","P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; k::
    ; While GetKeyState("k","P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; j::
    ; While GetKeyState("j","P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; l::
    ; While GetKeyState("l","P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }
    
    ; ver Test 02
    ; i::
    ; While (GetKeyState("Capslock","P") && GetKeyState("e", "P") && GetKeyState("i","P")) {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; k::
    ; While (GetKeyState("Capslock","P") && GetKeyState("e", "P") && GetKeyState("k","P")) {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; j::
    ; While (GetKeyState("Capslock","P") && GetKeyState("e", "P") && GetKeyState("j","P")) {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; l::
    ; While (GetKeyState("Capslock","P") && GetKeyState("e", "P") && GetKeyState("l","P")) {
    ;     MouseMove, Offset, 0, 0, R
    ; }

    ; ver Test 03
    ; i::
    ; While GetKeyState("i","P") {
    ;     MouseMove, 0, (Offset * -1), 0, R
    ; }
    ; k::
    ; While GetKeyState("k","P") {
    ;     MouseMove, 0, Offset, 0, R
    ; }
    ; j::
    ; While GetKeyState("j","P") {
    ;     MouseMove, (Offset * -1), 0, 0, R
    ; }
    ; l::
    ; While GetKeyState("l","P") {
    ;     MouseMove, Offset, 0, 0, R
    ; }
    

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











; Not Need to Me
; ^.::click right

;This allows to press and hold the left mouse button instead of just clicking it once. Needed for drag and drop operations.
;snippet by x79animal at https://autohotkey.com/board/topic/59665-key-press-and-hold-emulates-mouse-click-and-hold-win7/
; ^,::
;    If (A_PriorHotKey = A_ThisHotKey)
;    return
; click down
; return
; ^, up::click up


