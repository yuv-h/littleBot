#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines -1
SetKeyDelay ,-1,-1
Process, Priority,,H

global factor := 525

msgbox, When ready to start press Ctrl+Shift+d `n when the player losses press d again to stop script

^+d up::
	clipboard = 2
	ToolTip, starting...
	sleep 500
	ToolTip
	send {space}
	run ‏‏dinoPlayerBirdHandler.ahk
	loop
	{
		KeyWait, d, D T0.001
		if (ErrorLevel = 0)
		{
			ToolTip, stooped
			sleep 1000
			ToolTip
			clipboard = 1
			return
		}
		if checkObstecale()
		{
			send {up down}
			sleep 100
			send {up up}
		}
	}
return

~^s::
	Sleep 500
	Reload
	Sleep 1000
	msgbox reload unsucsseful...
return

checkObstecale()
{
	Critical
	
	PixelGetColor, color, factor, 250
	
	if color=0x535353
		return 1
	return 0
}