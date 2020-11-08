; v1.3 2019-09-12 https://gist.github.com/eladkarako/3a8b7e14b1845e8e1b3d1141b6484e54#file-disabletouchpad-ahk
;                 * timeout to 300ms
;                 + also disabling touch-pad 'scrolls' (two fingers gesture, all directions).
;                 + also block system-message 'WM_MOUSEMOVE' (https://docs.microsoft.com/en-us/windows/win32/inputdev/wm-mousemove)
;                     this helps with false screen-wakeups.
;                 * meta-improvements for quicker script.
;                 * code format/clean-up.
;
; v1.2 2017-07-13 https://github.com/blza/DisableTouchPad.ahk/
;                 Added support for latest AHK version by setting DllCall parameters to appropriate Ptr instead of Uint
;                 plus fixed timer to run once and using global variable.
;
; v1.1 2010-02-25 Added user configuration section
;                 Added option to block mouse clicks
;                 Added option to omit blocking for shift, ctrl, alt, win keys
;
; v1.0 2010-02-23 Original Release (does not work)
;                 https://lifehacker.com/disable-your-touchpad-when-youre-typing-with-autohotkey-5480260

#NoEnv                       ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force        ; Performs in single instance mode.
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
#KeyHistory 0                ; disable key-logging history.
ListLines Off                ; disable key-logging most-recently line executed.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;user configuration
DisableTime      := -300 ;in milliseconds
BlockMouseMove   := True
BlockLeftClick   := True
BlockMiddleClick := True
BlockRightClick  := True
BlockScrollUp    := True
BlockScrollDown  := True
BlockScrollLeft  := True
BlockScrollRight := True
AllowShift       := True
AllowCtrl        := True
AllowAlt         := True
AllowWin         := True
TimePassed       := 0
;keyboard hook code credit: http://www.autohotkey.com/forum/post-127490.html#127490
#Persistent
OnExit, Unhook

;initialize
hCallback := RegisterCallback("Keyboard", "Fast")
;ToolTip, %hCallback%
hHookKeybd := SetWindowsHookEx(13, hCallback)
;ToolTip, %hHookKeybd%
Hotkey, LButton,   DoNothing, Off
Hotkey, MButton,   DoNothing, Off
Hotkey, RButton,   DoNothing, Off
Hotkey, WheelUp,   DoNothing, Off
Hotkey, WheelDown, DoNothing, Off
Return

Mouse_Message_Handler(){
}


DisableTrackpad:
   TimePassed  := A_TickCount
   ShiftActive := AllowShift && GetKeyState("Shift")    ;query current state of key-event.
   CtrlActive  := AllowCtrl  && GetKeyState("Ctrl")     ;
   AltActive   := AllowAlt   && GetKeyState("Alt")      ;
   LWinActive  := AllowWin   && GetKeyState("LWin")     ;
   RWinActive  := AllowWin   && GetKeyState("RWin")     ;
   if (!ShiftActive && !CtrlActive && !AltActive && !LWinActive && !RWinActive)
   {
      if (BlockMouseMove){
         ;ToolTip, Disabling mousemove
         BlockInput, MouseMove   
         OnMessage(0x0200, "Mouse_Message_Handler")                 ;block 'WM_MOUSEMOVE' system-message (https://docs.microsoft.com/en-us/windows/win32/inputdev/wm-mousemove) - this helps preventing screen wake-up from sleep.
      }
      if (BlockLeftClick){
         Hotkey, LButton,   DoNothing, On
      }
      if (BlockMiddleClick){
         Hotkey, MButton,   DoNothing, On
      }
      if (BlockLeftClick){
         Hotkey, RButton,   DoNothing, On
      }
      if (BlockScrollUp){
         Hotkey, WheelUp,   DoNothing, On
      }
      if (BlockScrollDown){
         Hotkey, WheelDown, DoNothing, On
      }
      if (BlockScrollLeft){
         Hotkey, WheelLeft, DoNothing, On
      }
      if (BlockScrollRight){
         Hotkey, WheelRight, DoNothing, On
      }
   
      
   }
   Return


ReenableTrackpad:
   ;SetTimer, ReenableTrackpad, Off
   TimePassed := A_TickCount - TimePassed
   ;ToolTip, Reenabling mousemove after %TimePassed%
   if (BlockMouseMove){
      BlockInput, MouseMoveOff
      OnMessage(0x0200, "Mouse_Message_Handler", 0)              ;re-allow 'WM_MOUSEMOVE' system-message.
   }
   if (BlockLeftClick)
      Hotkey, LButton,    Off
   if (BlockMiddleClick)
      Hotkey, MButton,    Off
   if (BlockLeftClick)
      Hotkey, RButton,    Off
   if (BlockScrollUp)
      Hotkey, WheelUp,    Off
   if (BlockScrollDown)
      Hotkey, WheelDown,  Off
   if (BlockScrollLeft)
      Hotkey, WheelLeft,  Off
   if (BlockScrollRight)
      Hotkey, WheelRight, Off

   Return

DoNothing:
   Return

Unhook:
   UnhookWindowsHookEx(hHookKeybd)
   ExitApp

Keyboard(nCode, wParam, lParam){
   Critical
   global DisableTime
   If ( !nCode ){
      Gosub, DisableTrackpad
      SetTimer, ReenableTrackpad, %DisableTime%
   }
   Return CallNextHookEx(nCode, wParam, lParam)
}

SetWindowsHookEx(idHook, pfn){
   ;DllCall("GetModuleHandle", "Ptr", 0)
   Return DllCall("SetWindowsHookEx", "int", idHook, "Ptr", pfn, "Ptr", 0, "Ptr", 0)
}

UnhookWindowsHookEx(hHook){
   Return DllCall("UnhookWindowsHookEx", "Ptr", hHook)
}

CallNextHookEx(nCode, wParam, lParam, hHook = 0){
   Return DllCall("CallNextHookEx", "Ptr", hHook, "int", nCode, "Ptr", wParam, "Ptr", lParam)
}