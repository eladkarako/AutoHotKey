#MaxHotkeysPerInterval 400

return

;Win+Tab on back+forward
XButton1 & XButton2::Send {LWin Down}{Tab}
XButton1 & XButton2 UP::Send {LWin Up}
;Alt+Esc on back
XButton1 UP::Send !{Esc}
;Alt+Tab on back+mousewheel
XButton1 & WheelDown::AltTab
XButton1 & WheelUp::ShiftAltTab

;doubleclick on forward
XButton2 UP::Click 2
