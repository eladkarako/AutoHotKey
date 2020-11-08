SetTitleMatchMode,3     ;A window's title must exactly match WinTitle to be a match.

if WinActive("title Run") and WinActive("ahk_class #32770")
{
^a::
send, {Ctrl down}
send, {Home}
send, {Ctrl up}
send, {Ctrl down}
send, {Shift down}
send, {END}
send, {Ctrl up}
send, {Shift up}
return
}


;-----------------------------------------------
; problem:
;   on the dialog-box of Microsoft-Windows Start->Run, 
;   [CTRL]+[A] acts weird, deleting the content, 
;   when the auto-complete combo-box is open.  
;
; solution:
; [CTRL]+[A] can be replaced with
; [CTRL]+[HOME], [SHIFT]+[CTRL]+[END].
;
; the included limitations of
;   1. window title exact match (strict rule).
;   2. window title ("Run") content.
;   3. window class ("#32770").
; is just a pre-cation, and not really needed, 
; '[CTRL]+[HOME], [SHIFT]+[CTRL]+[END]' has the same result as [CTRL]+[A] everywhere.
;
;-----------------------------------------------
;https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm
;https://www.autohotkey.com/docs/commands/WinActive.htm
;https://www.autohotkey.com/docs/commands/Send.htm
;-----------------------------------------------
;
; Elad Karako. October 2020.
;-----------------------------------------------
