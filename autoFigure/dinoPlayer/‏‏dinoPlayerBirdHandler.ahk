#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetBatchLines 20
SetKeyDelay ,-1,-1
Process, Priority,,H

loop
{
	if clipboard = 1
	{
		exitapp
	}
	if checkObstecale()=1
	{
		send {down down}
		sleep 300
		send {down up}
	}
}

checkObstecale()
{
	Critical
	
	PixelGetColor, color, 520, 222
	
	if color=0x535353
		return 1
	return 0
}