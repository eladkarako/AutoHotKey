@echo off

set file_ahk="%~s1"
::set file_exe="%~d1%~p1%~n1.exe"
::set file_ico="%~d1%~p1%~n1.ico"
::set file_bin="%~d1%~p1%~n1.bin"

call Ahk2Exe.exe /in %file_ahk%

pause