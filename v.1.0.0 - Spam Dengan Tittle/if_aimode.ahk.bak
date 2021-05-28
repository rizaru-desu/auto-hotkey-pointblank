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
fr_loc = data/image/fr_slot.png
ct_loc = data/image/ct_slot.png
fr_ready = data/image/fr_rd.png
ct_ready = data/image/ct_rd.png
Loading = data/image/loading.png
fr_map = data/image/fr_point.png
ct_map = data/image/ct_point.png
skip_result = data/image/result.png
skip_ok = data/image/ok.png
bar_hp = data/image/hp_bar.png

;Variable
BreakingLoop = 0


Menu, Tray, Icon, %favicon%

;Gui Layout
;--------------------------------------------------------------
;--------------------------------------------------------------
Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Edit, x12 y89 w230 h30 ReadOnly vCommendline, Disini Keterangan Bot
Gui, Add, Text, x12 y9 w120 h30 , Hotkey F1 - Start Bot
Gui, Add, Text, x12 y49 w120 h30 , Hotkey F2 - Stop Bot
Gui, Add, Text, x142 y49 w100 h30 vCreated, © if_aimode
Gui, Add, Text, x142 y9 w100 h30 vWinCounter, Win: 0
; Generated using SmartGUI Creator for SciTE
Gui, Show, w280 h131, Ace Mode - Spam Tittle
GuiControl, Focus, Created
return

GuiClose:
ExitApp

F1::
	BreakingLoop = 0
	
	;set Position Point Blank
	;==========================================================
	
	;Auto Posisiton Point Blank
	IfWinExist, ahk_class PBApp ahk_exe PointBlank.exe
	{
		WinMove, ahk_class PBApp ahk_exe PointBlank.exe, , 0, 0
		WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
	} else {
		MsgBox,0,..., Point Blank Belum Kebuka
		BreakingLoop = 1
	}
		
	;Auto Posisiton Point Blank Sandboxie
	IfWinExist, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
	{
		WinMove, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe, , 0, 0
	} else {
		MsgBox, 0, ..., Point Blank DefaultBox Sandboxie Belum Kebuka
		BreakingLoop = 1
	}
	
	;==========================================================
	
	;Looping 
	;==========================================================
	Loop, {
		FormatTime, CurrentDateTime,, dd/MM/yy HH:mm:ss ;Get Time in Computer
		
		;Break Looping 
		;==========================================================
		
		if (BreakingLoop = 1)
		{
			GuiControl,, Commendline,  %CurrentDateTime% - Bot Terhenti
			break
		}
		
		;==========================================================
		
		
		;Sector JOB 
		;==========================================================
		
		IfWinActive, ahk_class PBApp ahk_exe PointBlank.exe 
		{
			
			;JOB Ready Jika TB Ready 
			;==========================================================
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %fr_loc% ;Cari Lokasi slot FR
			if (ErrorLevel = 0)
			{
				ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %fr_ready% ;Jika FR Ready akan menunggu...
				if (ErrorLevel = 0)
				{
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% - Job Ready
				}
				else if (ErrorLevel = 1) 
				{
					Sleep, 100
					Send, {f5 down}
					Sleep, 100
					Send, {f5 up}
					Sleep, 100
				}
				
				ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %ct_ready% ;Jika CT Ready akan menunggu...
				if (ErrorLevel = 0)
				{
					Sleep, 100
				}
				else if (ErrorLevel = 1) ;Jika CT tidak Ready maka pindah ke windows CT
				{
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Sleep, 100
				}
			}
			
			;Loading Screen
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %Loading% 
			if (ErrorLevel = 0)
			{
				Sleep, 100
				GuiControl,, Commendline,  %CurrentDateTime% - Loading.... Change Set
			}
			
			;FR Set Posision 
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %bar_hp%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Job bergerak
				Sleep, 100
				Send, {4 down}
				Sleep, 200
				Send, {4 Up}
				Sleep, 100
				DllCall("mouse_event", "UInt", 0x01, "UInt", 15, "UInt", -1610)
				;~ DllCall("mouse_event", "UInt", 0x01, "UInt", 25, "UInt", -1935)
				Sleep, 100
				Click, down
				Sleep, 100
				Click, up
				Sleep, 7000
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
			}
			
			;Skip Ok
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_ok%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip Ok
				Sleep, 500
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 500
			}
		}
		
		;==========================================================
		
		;Sector Tumbal
		;==========================================================
		
		IfWinActive, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
		{
			;CT Ready
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %ct_loc% ;Get Location CT
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
			}
			
			;Loading Screen
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %Loading% 
			if (ErrorLevel = 0)
			{
				Sleep, 100
				GuiControl,, Commendline,  %CurrentDateTime% - Current TB
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
			}
			
			;CT Set Posision 
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %bar_hp%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB bergerak
				Send, {4 down}
				Sleep, 100
				Send, {4 Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
			}
			
			;Skip Ok
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_ok%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip Ok
				Sleep, 100
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 500
			}
			
			;Skip Result
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %skip_result%
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - Skip Result
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
				Sleep, 300
				SendEvent, {Enter Down}
				Sleep, 50
				SendEvent, {Enter Up}
				Sleep, 100
				number += 1
				GuiControl,, WinCounter, Win:`n%number%
			}
		}
		;==========================================================
	
	}
	;==========================================================
	
return

F2::
BreakingLoop = 1
return

F3::
	
	ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %fr_ready%
	if (ErrorLevel = 0)
	{
		GuiControl,, Commendline,  %CurrentDateTime% - Found
	} else if (ErrorLevel = 1)
	{
		GuiControl,, Commendline,  %CurrentDateTime% - Not Found
	} else if (ErrorLevel = 2)
	{
		GuiControl,, Commendline,  %CurrentDateTime% - Error
	}
return


Esc::
ExitApp
return