SetCapsLockState, AlwaysOff
; Capslock + Tab 切换大小写
Capslock & Tab::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

RCtrl::
Send, ^{F12}
return

;依次为光标上移/左移/下移/右移
;删除、光标移到最前、光标移到最后、上翻页、下翻页、删除整行
#if GetKeyState("Capslock", "P")
k:: Send {up}
h:: Send {left}
j:: Send {down}
l:: Send {right}
u:: Send {BS}
n:: Send {home}
m:: Send {end}
o:: Send {Pgup}
.:: Send {Pgdn}
q:: Send {Esc}
,:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}

