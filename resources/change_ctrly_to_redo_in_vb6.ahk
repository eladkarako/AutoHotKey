;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
; Remaps [CTRL]+[Y] to REDO in VB6.
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#IfWinActive ahk_class wndclass_desked_gsk
{
^y::
Send {escape}
Send !e;
Send r
Send {escape}
Send {escape}
return
}
