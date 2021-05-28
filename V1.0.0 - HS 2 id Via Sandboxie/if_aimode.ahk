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


Menu, Tray, Icon, %favicon%

Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Text, x6 y13 w140 h20 , F1 - Play bot
Gui, Add, Text, x6 y43 w140 h20 , F2 - Stop bot
Gui, Add, Edit, x6 y73 w250 h20 +ReadOnly +Uppercase vCommendline, Keterangan Bot
Gui, Add, Text, x156 y13 w100 h50 , @if_aimode [Rizaru_DELTA4]
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
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe ;ke Tumbal
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
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Job
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *10 %bar_hp%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Setting Tumbal
				Sleep, 100
				Send, {3 down}
				Sleep, 400
				Send, {3 Up}
				Sleep, 100
				Send, {s down}
				Sleep, 2500
				Send, {s up}
				Sleep, 100
				Send, {w down}
				Sleep, 100
				Send, {w up}
				Sleep, 100
				Send, {a down}
				Sleep, 3000
				Send, {a up}
				Sleep, 100
				Send, {s down}
				Sleep, 500
				Send, {s up}
				Sleep, 100
				Send, {d down}
				Sleep, 1000
				Send, {d up}
				Sleep, 100
				Send, {w down}
				Sleep, 4000
				Send, {w up}
				Sleep, 100
				Send, {d down}
				Sleep, 720
				Send, {d up}
				Sleep, 100
				Send, {w down}
				Sleep, 7000
				Send, {w up}
				Sleep, 100
				Send, {d down}
				Sleep, 750
				Send, {d up}
				Sleep, 100
				Send, {w down}
				Sleep, 4000
				Send, {w up}
				Sleep, 100
				Send, {d down}
				Sleep, 1000
				Send, {d up}
				Sleep, 100
				Send, {s down}
				Sleep, 300
				Send, {s up}
				Sleep, 100
				Send, {3 down}
				Sleep, 400
				Send, {3 Up}
				Sleep, 100
				DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -23)
				Sleep, 100
				Click, down
				Sleep,100
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
				Sleep, 100
				Click, up
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
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Job
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
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Job
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *10 %bar_hp%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Setting Tumbal
				Sleep, 500
				Send, {3 down}
				Sleep, 400
				Send, {3 Up}
				Sleep, 100
				Send, {s down}
				Sleep, 3000
				Send, {s up}
				Sleep, 100
				Send, {w down}
				Sleep, 100
				Send, {w up}
				Sleep, 100
				Send, {a down}
				Sleep, 3000
				Send, {a up}
				Sleep, 100
				Send, {s down}
				Sleep, 500
				Send, {s up}
				Sleep, 100
				Send, {a down}
				Sleep, 300
				Send, {a up}
				Sleep, 100
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
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
			}
		}
	}
return

F2::
	BreakingLoop = 1
return
	

