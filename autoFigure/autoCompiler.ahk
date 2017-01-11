SetWorkingDir %A_ScriptDir%

if fileexist("installer.ahk")
	filedelete installer.ahk

first := "#NoEnv`nif not A_IsAdmin`n{`nRun *RunAs %A_ScriptFullPath%`nExitApp`n}`nFileCreateDir, %A_ProgramFiles%\littleBot`nSetWorkingDir %A_ProgramFiles%\littleBot`nFileCreateDir, %A_ProgramFiles%\littleBot\dinoPlayer`nFileCreateDir, %A_ProgramFiles%\littleBot\img"

fileappend, %first%, installer.ahk

loop files, *.*, R
{
	if InStr(A_LoopFileName, ".ahk")
	{
		continue
	}
	fileappend, FileInstall %A_LoopFileFullPath%`, `%A_ProgramFiles`%\littleBot\%A_LoopFileFullPath%`n, installer.ahk
}

short := "FileCreateShortcut, %A_ProgramFiles%\littleBot\figure.exe, %A_Startup%\figure.exe`n"

fileappend, %short%, installer.ahk
fileappend, msgbox installed successfully!, installer.ahk