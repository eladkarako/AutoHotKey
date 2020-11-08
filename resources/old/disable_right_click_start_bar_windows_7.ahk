RButton::RButton
RButton UP:: ;To auto-ctrl-shift-click on taskbar items
CoordMode, Mouse, Screen
MouseGetPos, x, y, WinUnderMouseID
yBottom := A_ScreenHeight - y
if yBottom <= 80
{
Send ^+{RButton}
}
else
if GetKeyState("RButton")==1
send {RButton UP}
else
send {RButton}
return
