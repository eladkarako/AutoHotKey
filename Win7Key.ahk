;--------------------------------------------------------[os/folders]
#1::          Run   ::{20d04fe0-3aea-1069-a2d8-08002b30309d}                                    ; [WIN] + [1]                   -> Open "My Computer"
#3::          Run   _run.exe c:\                                                                ; [WIN] + [3]                   -> Open Drive C:\
#5::          Run   _run.exe d:\                                                                ; [WIN] + [5]                   -> Open Drive D:\
#6::          Run   _run.exe e:\                                                                ; [WIN] + [6]                   -> Open Drive E:\
;#p::         Run   control printers                                                            ; [WIN] + [P]                   -> Open Printers and Devices (Compatible With All Windows Versions)
#p::          Run   ::{2227a280-3aea-1069-a2de-08002b30309d}                                    ; [WIN] + [P]                   -> Open Printers and Devices (Compatible With Windows Vista+)
#s::          Run   E:\Incoming

;--------------------------------------------------------[programs]
#O::          Run   C:\WINDOWS\system32\mstsc.exe                                               ; [Win] + [O]                   -> Remote Desktop
#z::          Run   C:\Windows\System32\SndVol.exe                                              ; [Win] + [Z]                   -> Windows' sound-mixer
#h::          Run,  D:\Software\Notepad++\notepad++.exe C:\WINDOWS\system32\drivers\etc\hosts     ; [WIN] + [SHIFT] + [H]         -> HOSTS using Notepad2 editor
#BACKSPACE::  Run   D:\software\Notepad2\Notepad2.exe                                           ; [WIN] + [BACKSPACE]           -> Notepad2
#+BACKSPACE:: Run   D:\software\Notepad2\Notepad2.exe                                           ; [WIN] + [SHIFT] + [BACKSPACE] -> Notepad2
#+DEL::       Run   D:\Software\All Security\CCleaner\CCleaner.exe                              ; [WIN] + [SHIFT] + [DEL]       -> CCleaner
#+c::         Run   D:\Software\Chromium\new\run.exe                                            ; [WIN] + [SHIFT] + [C]         -> Chromium shellexecute wrap that uses INI for the arguments.
#+d::         Run   \\karakocom\c\Documents and Settings\Elad\Desktop                           ; [WIN] + [SHIFT] + [D]         -> \\KarakoCom desktop
#+e::         Run   C:\Program Files\Internet Explorer\iexplore.exe                             ; [WIN] + [SHIFT] + [E]         -> Internet-Explorer
#+l::         Run   D:\Software\Locate32\locate32.lnk                                           ; [WIN] + [SHIFT] + [L]         -> Locate32                    need to pre-set both program (run as admin) and shortcut (properties, advance, run as admin), otherwise db writing has an error.
#+p::         Run   D:\Software\All Security\HandyTools\ProcessExplorer_12_x64.exe /t /e        ; [WIN] + [SHIFT] + [P]         -> Override "Screens Selection" Dialog, Open ProcessExplorer X64Bit, with tray switch.
#+r::         Run   D:\Software\All Security\Registry Workshop\RegWorkshop64.exe                ; [WIN] + [SHIFT] + [R]         -> RegistryWorkshop64
#+t::         Run   _run.exe far                                                                ; [WIN] + [SHIFT] + [T]         -> Run Far-Commander (Using PATH to know far.exe location).
#+v::         Run   C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe              ; [WIN] + [SHIFT] + [V]         -> Media-Player Classic.
#^BACKSPACE:: Run   D:\Software\Notepad++\notepad++.exe                                         ; [WIN] + [CTRL] + [BACKSPACE]  -> Notepad++
#^d::         Run   C:\Users\Elad\Desktop                                                       ; [WIN] + [CTRL] + [D]          -> my Desktop folder
#+q::         Run   D:\Software\WinSCP\WinSCP.exe                                               ; [WIN] + [CTRL] + [Q]          -> WinSCP
#+w::         Run   D:\Software\WinSCP\WinSCP.exe                                               ; [WIN] + [CTRL] + [W]          -> WinSCP


;--------------------------------------------------------[controls windows' state]
#n::          WinMaximize, A                                                                    ; [WIN] + [N]                   -> maximize active window.
;#m::         WinMinimize, A                                                                    ; [WIN] + [M]                   -> minimize active window (Windows' default).
#b::          WinRestore,  A                                                                    ; [WIN] + [B]                   -> restore active window.



;---------------------------------
;# win
;! alt
;^ ctrl
;+ shift


;  ::{1f4de370-d627-11d1-ba4f-00a0c91eedba}  Network Computers
;  ::{7bd29e00-76c1-11cf-9dd0-00a0c9034933}  Temporary Internet Files
;  ::{7be9d83c-a729-4d97-b5a7-1b7313c39e0a}  Programs Folder
;  ::{20d04fe0-3aea-1069-a2d8-08002b30309d}  My Computer
;  ::{00020d75-0000-0000-c000-000000000046}  Inbox
;  ::{21ec2020-3aea-1069-a2dd-08002b30309d}  Control Panel
;  ::{00028b00-0000-0000-c000-000000000046}  Microsoft Network
;  ::{48e7caab-b918-4e58-a94d-505519c795dc}  Start Menu Folder
;  ::{85bbd920-42a0-1069-a2e4-08002b30309d}  Briefcase
;  ::{208d2c60-3aea-1069-a2d7-08002b30309d}  My Network Places
;  ::{450d8fba-ad25-11d0-98a8-0800361b1103}  My Documents
;  ::{645ff040-5081-101b-9f08-00aa002f954e}  Recycle Bin
;  ::{2227a280-3aea-1069-a2de-08002b30309d}  Printers and Faxes
;  ::{7007acc7-3202-11d1-aad2-00805fc1270e}  Network Connections
;  ::{bdeadf00-c265-11d0-bced-00a0c90ab50f}  Web Folders
;  ::{d20ea4e1-3957-11d2-a40b-0c5020524152}  Fonts
;  ::{d20ea4e1-3957-11d2-a40b-0c5020524153}  Administrative Tools
;  ::{d6277990-4c6a-11cf-8d87-00aa0060f5bf}  Scheduled Tasks
;  ::{e211b736-43fd-11d1-9efb-0000f8757fcd}  Scanners and Cameras
;  ::{ff393560-c2a7-11cf-bff4-444553540000}  History
;  
;  ::{ed7ba470-8e54-465e-825c-99712043e01c}  Windows 7 Only - God Mod Folder
