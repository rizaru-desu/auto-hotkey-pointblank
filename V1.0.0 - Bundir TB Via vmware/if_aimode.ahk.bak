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
ready = data/image/ready.png
mulai = data/image/mulai.png
skip_ok = data/image/ok.png
bar_hp = data/image/hp_bar.png

;Variable
BreakingLoop = 0


Menu, Tray, Icon, %favicon%

Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Text, x6 y13 w140 h20 , F1 - Play bot
Gui, Add, Text, x6 y43 w140 h20 , F2 - Stop bot
Gui, Add, Edit, x6 y73 w250 h20 +ReadOnly +Uppercase vCommendline, Keterangan Bot
Gui, Add, Text, x156 y13 w100 h20 , @if_aimode
; Generated using SmartGUI Creator for SciTE
Gui, Show, w270 h106, Tumbal Bundir 2R 
return

GuiClose:
ExitApp

F1::
	BreakingLoop = 0
	;==========================================================
	GuiControl,, Commendline, Bot Berjalan
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
		WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
		
		;Sector Tumbal
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			;CT Ready
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %mulai% ; Round 00
			if (ErrorLevel = 0)
			{
				ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %ready% ;Get ready
				if (ErrorLevel = 0)
				{
						GuiControl,, Commendline,  %CurrentDateTime% - Stay Ready
						Sleep, 100
						Send, {f5 down}
						Sleep, 100
						Send, {f5 up}
						Sleep, 100
				}
				
				Sleep, 100
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
			}
			
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %bar_hp%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Tumbal out
				Sleep, 5000
				Send, {4 down}
				Sleep, 200
				Send, {4 Up}
				Sleep, 100
				DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
				Sleep, 100
				Click, down
				Sleep, 100
				Click, up
				Sleep, 12000
				GuiControl,, Commendline,  %CurrentDateTime% - Round 1
				Click, down
				Sleep, 100
				Click, up
				Sleep, 3000
				Send, {4 down}
				Sleep, 200
				Send, {4 Up}
				Sleep, 100
				DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 2500)
				Sleep, 100
				Click, down
				Sleep, 100
				Click, up
				Sleep, 12600
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
		}
	}
return

F2::
	BreakingLoop = 1
return
	

