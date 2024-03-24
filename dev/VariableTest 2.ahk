#SingleInstance force

myKey := "i"

; Hotkey, %myKey%, Send {Up}

Hotkey, %myKey%, Send {Up}
return
test:
    Send {Up}