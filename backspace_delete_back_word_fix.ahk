; makes [CTRL]+[Backspace] compatible with all applications, using instead [CTRL]+[Left], Then [CTRL]+[DEL].
; EladKarako 23:34 יום רביעי 12 אוקטובר 2016

^BS:: send, ^+{left}{delete}
