#SingleInstance, force
SetBatchLines -1
Coordmode, Mouse, Client

if not A_IsAdmin
{
  Run *RunAs "%A_ScriptFullPath%"
  ExitApp
} 


;image
favicon = data/favicon.ico
mulai = data/image/mulai.png
ready = data/image/ready.png
ready_green = data/image/ready_green.png
ensign = data/image/ensign.png
medal = data/image/medal.png
masmed = data/image/master_medal.png
skip_result = data/image/result.png
skip_ok = data/image/ok.png
Loading = data/image/loading.png
hp_bar = data/image/hp_bar.png
skip_mission = data/image/skip_mission.png

;Variable
BreakingLoop = 0
set_bom = 0

Menu, Tray, Icon, %favicon%
;Gui Layout
;--------------------------------------------------------------
;--------------------------------------------------------------
Gui, Font, s8, comic sans Ms
Gui, Color, FFFFFF
Gui, Add, Edit, x12 y89 w230 h20 ReadOnly vCommendline, Disini Keterangan Bot
Gui, Add, Text, x12 y9 w120 h30 , Hotkey F1 - Start Bot
Gui, Add, Text, x12 y49 w120 h30 , Hotkey F2 - Stop Bot
Gui, Add, Edit, x142 y56 w100 h20 vChange +Number, 
Gui, Add, Text, x142 y9 w100 h18 vWinCounter, Masmed: 0
Gui, Add, Text, x142 y29 w100 h20, Jarak K1/K2: 
; Generated using SmartGUI Creator for SciTE
Gui, Show, w280 h131, Burning Hall - Special
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
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %ready% ;Get Location CT
			if (ErrorLevel = 0)
			{
				GuiControl,, Commendline,  %CurrentDateTime% - TB Ready
				Sleep, 100
				Send, {f5 down}
				Sleep, 100
				Send, {f5 up}
				Sleep, 100
				WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
			}
			
			;HP Bar
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %hp_bar% 
			if (ErrorLevel = 0)
			{
				GuiControlGet, ChangeWeapong,,Change
				If (set_bom = 0) {
					;Kill 1
					GuiControl,, HistoryBot,  %CurrentDateTime% : TB Jalan
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					Loop %ChangeWeapong%
					{
						Sleep, 100
						SendEvent, {Right Down}
						Sleep, 100
						SendEvent, {Right Up}
						Sleep, 100
					}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 400
					SendEvent, {Enter Up}
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					
					;Kill 2         
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
		
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					 
					;Kill 3
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					Send, {4 down}
					Sleep, 400
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 4000
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					set_bom = 1
				}
				
				If (set_bom = 1) {
					;Kill 1
					GuiControl,, HistoryBot,  %CurrentDateTime% : TB Jalan
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					Loop 1
					{
						Sleep, 100
						SendEvent, {Right Down}
						Sleep, 10
						SendEvent, {Right Up}
						Sleep, 100
					}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 400
					SendEvent, {Enter Up}
					Sleep, 100
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					
					;Kill 2         
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
		
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					 
					;Kill 3
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					Send, {4 down}
					Sleep, 400
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 4000
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					set_bom = 2
				}
				
				If (set_bom = 2) {
					;Kill 1
					GuiControl,, HistoryBot,  %CurrentDateTime% : TB Jalan
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					Loop 1
					{
						Sleep, 100
						SendEvent, {Right Down}
						Sleep, 10
						SendEvent, {Right Up}
						Sleep, 100
					}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 400
					SendEvent, {Enter Up}
					Sleep, 100
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					Loop %ChangeWeapong%
					{
						Sleep, 100
						SendEvent, {Right Down}
						Sleep, 10
						SendEvent, {Right Up}
						Sleep, 100
					}
					Sleep, 100
					SendEvent, {Enter Down}
					Sleep, 400
					SendEvent, {Enter Up}
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					
					;Kill 2         
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
		
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep,500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					 
					;Kill 3
					Sleep, 10000
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
					Send, {1 down}
					Sleep, 400
					Send, {1 Up}
					Sleep, 100
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
					 
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
					Sleep, 500
					Send, {4 down}
					Sleep, 400
					Send, {4 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -5)
					Sleep,100
					Click, down
					Sleep, 100
					Click, up
					Sleep, 500
					Click, down
					Sleep, 100
					Click, up
					Sleep, 4000
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					gosub, TB_Out
					set_bom = 3
				}
			}
			
			;Medal
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %medal%
			if (ErrorLevel = 0)
			{
				ImageSearch, outMX, outMY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %skip_mission%
				if (ErrorLevel = 0)
				{
					GuiControl,, Commendline,  %CurrentDateTime% : Skip OK
					Sleep, 300
					MouseClick, left, outMX, outMY - 15, 1
					Sleep, 100
				}
			}
			
			;Master Medal
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %masmed%
			if (ErrorLevel = 0)
			{
				number += 1
				GuiControl,, WinCounter, Masmed: %number%
				
				ImageSearch, outMX, outMY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %skip_mission%
				if (ErrorLevel = 0)
				{
					GuiControl,, Commendline,  %CurrentDateTime% : Skip OK
					Sleep, 1000
					MouseClick, left, outMX, outMY - 15, 1
					Sleep, 1000
					MouseClick, left, 719, 744, 1 ;goto info
					Sleep, 1000
					MouseClick, left, 600, 117, 1 ;select dropdown
					Sleep, 1000
					MouseClick, left, 482, 281, 1 ;select Special
					Sleep, 1000
					MouseClick, left, 871, 121, 1 ;select beli
					Sleep, 1000
					MouseClick, left, 476, 482, 1 ;Konfirm
					Sleep, 1000
					SendEvent, {Enter Down}
					Sleep, 50
					SendEvent, {Enter Up}
					Sleep, 1000
					MouseClick, left, 974, 680, 1 ;exit
					Sleep, 1000
				}
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
			}
		}
		
		;==========================================================
		
		;Sector Tumbal
		;==========================================================
		
		IfWinActive, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
		{
			;CT Ready
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %ready_green% ;Cari Lokasi slot FR
			if (ErrorLevel = 0)
			{
				nyamper = 0
				ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20 %mulai% ;Jika FR Ready akan menunggu...
				if (ErrorLevel = 0)
				{
					GuiControl,, Commendline,  %CurrentDateTime% - Job Ready
					Sleep, 100
					Send, {f5 down}
					Sleep, 100
					Send, {f5 up}
					Sleep, 100
				}
			}
			
			;Loading Screen
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %Loading% 
			if (ErrorLevel = 0)
			{
				Sleep, 100
				set_bom = 0
				GuiControl,, Commendline,  %CurrentDateTime% - Current JOB
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
		}
	}
return

F2::
BreakingLoop = 1
return

TB_Out:
	GuiControl,, Commendline,  %CurrentDateTime% - Skip Kabur
	Sleep, 100
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
	WinActivate, ahk_class PBApp ahk_exe PointBlank.exe			
return