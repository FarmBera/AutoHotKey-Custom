SetCapsLockState, AlwaysOff


#If GetKeyState("Capslock","P")
    ; wasd --> arrow keys
    w::Up
    a::Left
    s::Down
    d::Right

    #If GetKeyState("e", "P")
        ; MsgBox, [Ok, Test Box, 테스트 성공!, 5000]
        MsgBox Test SUCCESS
        u::LButton
        o::RButton
        i:: ; mouse cursor up
        j:: ; mouse cursor left
        k:: ; mouse cursor down
        l:: ; mouse cursor right
        y::WheelUp
        h::WheelDown


#If (GetKeyState("Capslock","P") && GetKeyState("e", "P"))
    ; 이 부분에서 Capslock이 눌린 상태에서 E를 누르면 원하는 작업을 수행하도록 설정합니다.
    ; 예를 들어, 여기에 원하는 동작을 넣으면 됩니다.
    MsgBox Capslock이 눌린 상태에서 E를 누르셨습니다.


; Capslock Settings
    ; Capslock stand-alone: Switch Language
#If
*CapsLock::
KeyWait, CapsLock
If A_ThisHotkey = *CapsLock
    Send, {vk15}
Return
