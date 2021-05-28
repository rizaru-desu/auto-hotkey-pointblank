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
mulai = data/image/mulai.png
ready = data/image/ready.png
skip_result = data/image/result.png
skip_ok = data/image/ok.png
bar_hp = data/image/hp_bar.png
weapon = data/image/weapon.png

;Variable
BreakingLoop = 0
step = 1


Menu, Tray, Icon, %favicon%

Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Text, x6 y13 w140 h20 , F1 - Play bot
Gui, Add, Text, x6 y43 w140 h20 , F2 - Stop bot
Gui, Add, Edit, x6 y73 w250 h20 +ReadOnly +Uppercase vCommendline, Keterangan Bot
Gui, Add, Text, x156 y13 w100 h50 , @if_aimode
; Generated using SmartGUI Creator for SciTE
Gui, Show, w283 h136, Sandboxied Bundir 2R 
GuiControl, Focus, Created
return

GuiClose:
ExitApp

F1::
	WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
	BreakingLoop = 0
	;==========================================================
	
	;Looping 
	;==========================================================
	Loop, 
	{		
		;Break Looping 
		;==========================================================
		
		if (BreakingLoop = 1)
		{
			break
		}
		
		;==========================================================
		
		
		;Sector Start JOB
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			;Search Mulai Tumbal
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready% ;
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Job Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
				step = 1
			}
			
			;Search Ready Job
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai% ;
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_ok%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip OK
				Sleep, 500
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 500
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *10 %weapon%
			if (ErrorLevel = 0)
			{
				
				Sleep, 100
				SendEvent, {Escape Down}
				Sleep, 100
				SendEvent, {Escape Up}
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
			}
		}
		
		;Sector Start Tumbal
		;==========================================================
		IfWinActive, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe 
		{
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %ready% ;
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Job Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Tumbal
				step = 1
			}
			
			;Search Ready Job
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai% ;
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
				step = 1
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *10 %bar_hp%
			if (ErrorLevel = 0)
			{
				if ( step = 1 ) ;Tumbal Bundir 1x
				{
					GuiControl,, Commendline,  %CurrentDateTime% - Tumbal Wait Bundir
					Sleep, 3800
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Job
					step = 2
				} 
				if (step = 2) ;Job Bundir 1x
				{
					Sleep, 14800
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
					step = 3
				}
				if (step = 3) ;Tumbal Bundir 2x
				{
					Sleep, 1000
					Send, {4 down}
					Sleep, 200
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
					Sleep, 100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
					step = 4
				}
				if (step = 4) ;Tumbal Out
				{
					Sleep, 13000
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% - Tumbal out
					SendEvent, {Escape Down}
					Sleep, 100
					SendEvent, {Escape Up}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 100
					SendEvent, {Enter Up}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 100
					SendEvent, {Enter Up}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 100
					SendEvent, {Enter Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Job
					step = 4
				}
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_ok%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip OK
				Sleep, 500
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 500
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *10 %weapon%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip Shop
				Sleep, 100
				SendEvent, {Escape Down}
				Sleep, 100
				SendEvent, {Escape Up}
				Sleep, 500
			}
		}
	}
return

F2::
	BreakingLoop = 1
return
	

