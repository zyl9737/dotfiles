SetCapsLockState, AlwaysOff
; Capslock + Tab 切换大小写
Capslock & Tab::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

;依次为光标上移/左移/下移/右移
;删除、光标移到最前、光标移到最后、上翻页、下翻页、删除整行
#if GetKeyState("Capslock", "P")
k:: Send {up}
h:: Send {left}
j:: Send {down}
l:: Send {right}
u:: Send {BS}
i:: Send {Del}
n:: Send {home}
m:: Send {end}
q:: Send {Escape}
f:: Send {Pgup}
b:: Send {Pgdn}
,:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
