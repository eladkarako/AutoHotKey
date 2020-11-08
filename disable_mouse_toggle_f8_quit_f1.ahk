#NoEnv                  ;disables access to environment variables.
#SingleInstance force   ;prevent more than one copy of the program running at a time (skip the dialog-box that asks if to replace the current-execution --- new execution will replace old one).
#InstallKeybdHook       ;explicitly activate keyboard-hook for the script (same as using $ infront of the hotkey).
#InstallMouseHook       ;explicitly activate mouse-hook for the script.
#KeyHistory 0           ;disable key-logging history. prevents some overhead caused by keyboard/mouse-hook. (normally 'KeyHistory' command is used for debugging keys from this program, but activating 'InstallKeybdHook/InstallMouseHook' also tracks global key/mouse events, disabling history helps a little).
#Persistent             ;explicitly declare the program to run permanently. must use ExitApp to close it.
ListLines Off           ;disable key-logging most-recently line executed.
SendMode Input          ;prefer faster "Input" (SendInput) over "Event" ("Event" is the default mode).
;SendMode Event         ;prefer slower bug explorer-compatible "Event" over "Input" (SendInput).
;;---------------------------------------------------------------------------------------------------
;;  F8 toggle [mouse movement and click] [ON/OFF], F1 quits
;;  https://gist.github.com/eladkarako/eef8568b038d4f81eab575d4879240e3#file-autohotkey_disable_mouse_toggle_f8_quit_f1-ahk
;;---------------------------------------------------------------------------------------------------

is_mouse_blocked := false   ;initialize


Toggle(variable){           ;toggle value (1 true/0 false)
  variable ^= 1
  return variable
}


Mouse_Message_Handler(){
}


F8::
  is_mouse_blocked := Toggle(is_mouse_blocked)    ;toggle variable value.
  if(is_mouse_blocked == 1){ ; If this variable has the value "true" 
    BlockInput, MouseMove
    OnMessage(0x0200, "Mouse_Message_Handler")                 ;block 'WM_MOUSEMOVE' system-message (https://docs.microsoft.com/en-us/windows/win32/inputdev/wm-mousemove) - this helps preventing screen wake-up from sleep.
  }else{
    BlockInput, MouseMoveOff
    OnMessage(0x0200, "Mouse_Message_Handler", 0)              ;re-allow 'WM_MOUSEMOVE' system-message.
  }
  return


F1::
  exitApp, 0
  return



#If (is_mouse_blocked)  ;HOTKEY LABELs activated in 'the script-continues-loop' (controlled by TRUE/FALSE value)
  LButton::
  MButton::
  RButton::
  XButton1::
  XButton2::
  WheelUp::
  WheelDown::
  WheelLeft::
  WheelRight::

 ^LButton::
 ^MButton::
 ^RButton::
 ^XButton1::
 ^XButton2::
 ^WheelUp::
 ^WheelDown::
 ^WheelLeft::
 ^WheelRight::
  
  return
#If

