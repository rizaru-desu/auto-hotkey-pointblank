#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
SetBatchLines -1
Coordmode, Pixel, Window


if not A_IsAdmin
{
  Run *RunAs "%A_ScriptFullPath%"
  ExitApp
} 

;Icon Source
favicon = data/favicon.ico
already = data/image/already.png
rm = data/image/rm.png
rm_non = data/image/rm-non.png
skip_result = data/image/result.png
skip_ok = data/image/ok.png
bar_hp = data/image/bar_hp.png

;Variable
BreakingLoop = 0
step = 0


Menu, Tray, Icon, %favicon%

Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Edit, x12 y99 w310 h20 , Edit
Gui, Add, Text, x12 y9 w170 h20 , F1: untuk Job 4 id 1 pc
Gui, Add, Text, x12 y39 w170 h20 , F2: untuk Tumbal 2 out 1r di 1 pc
Gui, Add, Text, x12 y69 w170 h20 , F2: rm out && 1 out di 1r di 1pc
; Generated using SmartGUI Creator for SciTE
Gui, Show, w341 h146, Untitled GUI
return

GuiClose:
ExitApp

F1::
	BreakingLoop = 0
	
	;==========================================================
	
	;Looping 
	;==========================================================
	Loop, 
	{
		FormatTime, CurrentDateTime,, dd/MM/yy HH:mm:ss ;Get Time in Computer
		
		;Break Looping 
		;==========================================================
		
		if (BreakingLoop = 1)
		{
			GuiControl,, Commendline,  %CurrentDateTime% - Bot Terhenti
			break
		}
		
		;==========================================================
		
		
		;Sector JOB 1 
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job1:PBApp ahk_exe PointBlank.exe ;Ke Job 2
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job2:PBApp ahk_exe PointBlank.exe ;Ke Job 2
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *1 %bar_hp%
			if (ErrorLevel = 0)
			{
				if (step = 1) {
				
					Sleep, 2000
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					step = 2
					WinActivate, ahk_class Sandbox:Job2:PBApp ahk_exe PointBlank.exe ;Ke Job 2
				}
				
				if (step = 2) {
				
					Sleep, 100
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					step = 3
					WinActivate, ahk_class Sandbox:Job3:PBApp ahk_exe PointBlank.exe ;Ke Job 3
				}
				if (step = 3) {
				
					Sleep, 100
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					step = 4
					WinActivate, ahk_class Sandbox:Job4:PBApp ahk_exe PointBlank.exe ;Ke Job 4
				}
				
				if (step = 4) {
				
					Sleep, 12800
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					step = 5
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 1
				}
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_ok%
			if (ErrorLevel = 0)
			{
				Sleep, 500
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 500
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 2
			}
		}
		
		;==========================================================
		
		;Sector JOB 2
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 3
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 3
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 3
			}
		}
		
		;==========================================================
		
		;Sector JOB 3 
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready% ; Round 00
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job4:PBApp ahk_exe PointBlank.exe ;Ke Job 4
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job4:PBApp ahk_exe PointBlank.exe ;Ke Job 4
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job4:PBApp ahk_exe PointBlank.exe ;Ke Job 4
			}
		}
		
		;==========================================================
		
		;Sector JOB 4 
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready% ; Round 00
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job1:PBApp ahk_exe PointBlank.exe ;Ke Job 1
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:Job1:PBApp ahk_exe PointBlank.exe ;Ke Job 1
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;Ke Job 1
			}
		}
		
		;==========================================================
		
	}
return

F6::
	BreakingLoop = 1
return
	

