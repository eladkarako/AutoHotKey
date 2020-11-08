@echo off

chcp 65001 2>nul >nul

call "%~dp0Compiler\Ahk2Exe.exe" "/in" "%~l"

pause