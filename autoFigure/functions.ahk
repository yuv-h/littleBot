#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include animations.ahk
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

battery()
{
	static batStat := 1
	batteryPer := GetBatPower()
	if batteryPer <= 25
	{
		if batStat != 0
			lowBatAn()
		batStat = 0
	}
	else if batteryPer = 100
	{
		batStat = 2
	}
	else
	{
		batStat = 1
	}
	return
}

Internet()
{
	static interState := 1
	static dinoPlayerState := 1
	If !ConnectedToInternet() 
	{
		if interState = 1
		{
			noInternetAn()
			interState = 0
		}
	}
	else if interState != 1
	{
		internetOnAn()
		interState = 1
		dinoPlayerState = 1
	}
	IfWinActive, ahk_exe chrome.exe
	{
		if interState = 0
		{
			if dinoPlayerState = 1
			{
				MsgBox, 4, Activate dinoPlayer?, Activate dinoPlayer function?
				IfMsgBox Yes
				{
					send {f5}
					run dinoPlayer\dinoPlayer.exe
				}
				dinoPlayerState = 0
			}
		}
	}
	return
}

ConnectedToInternet(flag=0x40) 
{
	Return DllCall("Wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0)
}

updateLoc(xpos, ypos)
{	
	if A_IsCompiled
		WinMove, figure.exe,, xpos, ypos
	else
	WinMove, figure.ahk,, xpos, ypos
	return
}

updateLocMouse()
{
	MouseGetPos, xpos, ypos
	if A_IsCompiled
		WinMove, figure.exe,, xpos, ypos
	else
		WinMove, figure.ahk,, xpos, ypos
	return
}

GetBatPower()
{
	objWMIService := ComObjGet( "winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2" )
	colItems := objWMIService.ExecQuery("Select * from Win32_Battery")._NewEnum
	While colItems[objItem] 
	{
		Charge:=objItem.EstimatedChargeRemaining 
		return Charge
	}
}

sound()
{
	static soundsStat := 1
	SoundGet, master_mute, , mute
	if master_mute=on
	{
		if soundsStat = 1
		{
			muteAn()
			soundsStat = 0
		}
	}
	else if soundsStat != 1
	{
		soundonAn()
		soundsStat = 1
	}
}

isWindowFullScreen()
{
	static isVis := 1
	IfWinActive, ahk_exe chrome.exe
	{
		;checks if the specified window is full screen
		;use WinExist of another means to get the Unique ID (HWND) of the desired window
		WinID := WinExist("A")
		if ( !WinID )
			return
	
		WinGet, style, Style, ahk_id %WinID%
		; 0x800000 is WS_BORDER.
		; 0x20000000 is WS_MINIMIZE.
		; no border and not minimized
		retVal := (style & 0x20800000) ? 0 : 1
		if retVal
		{
			if isVis = 1
			{
				Gui, Show, Hide
				isVis = 0
			}
		}
		else
		{
			if isVis = 0
			{
				isVis = 1
				Gui, Show, Maximize
			}
		}
	}
	return
}