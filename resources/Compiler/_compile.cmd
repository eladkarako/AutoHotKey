@echo off
chcp 65001 2>nul >nul

pushd "%~sdp0"

Ahk2Exe.exe "/in" "%~f1"

pause
popd