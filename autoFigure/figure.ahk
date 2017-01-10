﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include animations.ahk
#Include functions.ahk
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

~^s::
	IfWinActive, figure.ahk - Notepad++
	sleep 500
	reload
return

!+^s::
	CustomColor = black
	Gui +LastFound +AlwaysOnTop -Caption +ToolWindow
	Gui, Color, %CustomColor%

	SetTimer, checkOps, 3000
	SetTimer, updateLocMouse, 200
	
	Gui, Add, Picture,, %A_WorkingDir%\img\figure.bmp
	WinSet, TransColor, %CustomColor%
	Gui, Show, NoActivate
	checkOps()
	goto blinkHandle
return

checkOps()
{
	Internet()
	battery()
	sound()
	return
}

blinkHandle:
	Random, sec, 100, 8000
	sleep %sec%
	blink()
	sleep 200
	GuiControl,, figure.bmp, %A_WorkingDir%\img\figure.bmp
	goto blinkHandle