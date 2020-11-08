;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
; CMD with [CTRL]+[V] support.
; Pressing [CTRL]+[V] will (try) to paste the content of the clipboard to 
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#NoEnv            ;disables access to environment variables.
#KeyHistory 0     ;disable key-logging history.
ListLines Off     ;disable key-logging most-recently line executed.
;SendMode Input   ;prefer faster "Input" (SendInput) over "Event" ("Event" is the default mode).
SendMode Event    ;prefer slower bug explorer-compatible "Event" over "Input" (SendInput).
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


#IfWinActive ahk_class ConsoleWindowClass
{
^V::
SendInput {Raw}%clipboard%
return
}
