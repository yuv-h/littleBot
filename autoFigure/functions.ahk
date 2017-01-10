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
	}
	return
}

ConnectedToInternet(flag=0x40) 
{
	Return DllCall("Wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0)
}

updateLoc(xpos, ypos)
{
	WinMove, figure.ahk,, xpos, ypos
	return
}

updateLocMouse()
{
	MouseGetPos, xpos, ypos
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