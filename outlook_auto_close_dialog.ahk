process, exist, notepad2.exe
;----------------------------not exist
if (%ErrorLevel% = 0){ 
  return 
}

;----------------------------exist

MSG_TITLE := "הולך לסגור את אאוטלוק"
MSG_BODY  := "אלעד רוצה לסגור את אאוטלוק." . "`n`n" . "התוכנה תיסגר תוך 20 שניות אוטומטית."

;0x1      OK(ENTER)/Cancel(ESC)
;0x20     Icon Question
;0x40000  Always-on-top 
;0x80000  Make the text right-justified
;0x100000 Right-to-left reading order for Hebrew/Arabic
;---------
;0x1C0021
msgbox 0x1C0021, %MSG_TITLE%, %MSG_BODY%, 20
IfMsgBox Cancel  
  return
else IfMsgBox OK
  Run, "%windir%\System32\taskkill.exe" /T /IM "outlook.exe"
else IfMsgBox Timeout  
  Run, "%windir%\System32\taskkill.exe" /T /IM "outlook.exe"



