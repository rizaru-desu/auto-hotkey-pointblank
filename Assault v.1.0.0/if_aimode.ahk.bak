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
Kill = 0


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
Gui, Add, Text, x142 y9 w100 h30 vWinCounter, Masmed: 0
; Generated using SmartGUI Creator for SciTE
Gui, Show, w280 h131, Burning Hall - Assault
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
			
			;HP Bar
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %hp_bar% 
			if (ErrorLevel = 0)
			{
				If (Kill = 0) {
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
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
					;Job Nyamper TB
					GuiControl,, HistoryBot,  %CurrentDateTime% : Job Jalan
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
					Send, {3 down}
					Sleep, 400
					Send, {3 Up}
					Sleep, 100
					DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", -10)
					Sleep, 100
					Click, down
					Sleep, 2000
					Click, up
					Sleep,100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Kill = 1
				} 
				
				if (Kill = 1) 
				{
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					SendEvent, {Left Down}
					Sleep, 10
					SendEvent, {Left Up}
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
					Sleep, 100
					Send, {1 down}
					Sleep, 1000
					Send, {1 Up}
					Sleep, 100
					Click, down
					Sleep, 700
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Kill = 2
				} 
				
				if (Kill = 2) 
				{
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					SendEvent, {Left Down}
					Sleep, 10
					SendEvent, {Left Up}
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
					Sleep, 100
					Send, {1 down}
					Sleep, 1000
					Send, {1 Up}
					Sleep, 100
					Click, down
					Sleep, 700
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Kill = 3
				} 
				
				if ( Kill = 3) 
				{
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					SendEvent, {Left Down}
					Sleep, 10
					SendEvent, {Left Up}
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
					Sleep, 100
					Send, {1 down}
					Sleep, 1000
					Send, {1 Up}
					Sleep, 100
					Click, down
					Sleep, 700
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Kill = 4
				}
				
				if ( Kill = 4) 
				{
					Sleep, 100
					GuiControl,, Commendline,  %CurrentDateTime% : TB set Posisi
					Sleep, 10000
					Send, {t down}
					Sleep, 400
					Send, {t Up}
					Sleep, 100
					SendEvent, {Left Down}
					Sleep, 10
					SendEvent, {Left Up}
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
					Sleep, 100
					Send, {1 down}
					Sleep, 1000
					Send, {1 Up}
					Sleep, 100
					Click, down
					Sleep, 700
					Click, up
					Sleep, 100
					WinActivate, ahk_class Sandbox:DefaultBox:PBApp ahk_exe PointBlank.exe
					Sleep, 100
					gosub, TB_Out
					Kill = 5
					WinActivate, ahk_class PBApp ahk_exe PointBlank.exe
				}
			}
			
			;ensign Medal
			ImageSearch, outX, outY, 0,0, A_ScreenWidth, A_ScreenHeight, *20, %ensign%
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
					MouseClick, left, 874, 240, 1 ;select dropdown
					Sleep, 1000
					MouseClick, left, 457, 226, 1 ;select Special
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
				WinActivate, ahk_class PBApp ahk_exe PointBlank.exe ;ke Tumbal
			}
			
			;Loading Screen
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %Loading% 
			if (ErrorLevel = 0)
			{
				Sleep, 100
				GuiControl,, Commendline,  %CurrentDateTime% - Current TB
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
			
			;Kabur
			ImageSearch, outX, outY, 0, 0,  A_ScreenWidth, A_ScreenHeight, *20 %kill_bar%
			if (ErrorLevel = 0)
			{
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
return