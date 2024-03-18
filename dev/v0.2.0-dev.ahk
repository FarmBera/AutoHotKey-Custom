SetCapsLockState, AlwaysOff


#If GetKeyState("Capslock","P")
    ; wasd --> arrow keys
    w::Up
    a::Left
    s::Down
    d::Right

    ; #If GetKeyState("e", "P")
    ;     Send, {e up}
    ;     ; MsgBox, [Ok, Test Box, 테스트 성공!, 5000]
    ;     ; MsgBox Test SUCCESS
    ;     u::LButton
    ;     o::RButton
    ;     i:: ; mouse cursor up
    ;     j:: ; mouse cursor left
    ;     k:: ; mouse cursor down
    ;     l:: ; mouse cursor right
    ;     y::WheelUp
    ;     h::WheelDown


#If (GetKeyState("Capslock","P") && GetKeyState("e", "P"))
    ; MsgBox, [Ok, Test Box, 테스트 성공!, 5000]
    ; MsgBox Test SUCCESS

    ; Send, {e up} ; not working
    ; Hotkey, e, Off ; not working
    e::Return ; block key input
    u::LButton
    o::RButton
    ; i:: ; mouse cursor up
    ; j:: ; mouse cursor left
    ; k:: ; mouse cursor down
    ; l:: ; mouse cursor right
    y::WheelUp
    h::WheelDown


; Capslock Settings
    ; Capslock stand-alone: Switch Language
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
