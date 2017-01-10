#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2
CoordMode, Mouse, Screen

global speed := 200

blink()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\figure.bmp
	loop,3
	{
		GuiControl,, figure.bmp, %A_WorkingDir%\img\figure%a_index%.bmp
		sleep speed
	}
}

noInternetAn()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet2.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet2.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet2.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet3.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet3.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet2.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\nointernet.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\figure.bmp
}

internetOnAn()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\interneton.bmp
	loop,7
	{
		GuiControl,, figure.bmp, % A_WorkingDir . "\img\interneton" . a_index+1 . ".bmp"
		sleep speed
	}
	GuiControl,, figure.bmp, %A_WorkingDir%\img\interneton7.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\interneton8.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\figure.bmp
}

lowBatAn()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat.bmp
	sleep speed
	loop,3
	{
		GuiControl,, figure.bmp, % A_WorkingDir . "\img\lowBat" . a_index+1 . ".bmp"
		sleep speed
	}
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat4.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat7.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat7.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\lowBat7.bmp
	sleep 500
	GuiControl,, figure.bmp, %A_WorkingDir%\img\\figure.bmp
}

muteAn()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\muted.bmp
	loop,5
	{	
		sleep speed
		GuiControl,, figure.bmp, % A_WorkingDir . "\img\muted" . a_index+1 . ".bmp"
	}
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\muted5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\muted6.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\muted5.bmp
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\figure.bmp
}

soundonAn()
{
	GuiControl,, figure.bmp, %A_WorkingDir%\img\soundon.bmp
	loop,4
	{
		sleep speed
		GuiControl,, figure.bmp, % A_WorkingDir . "\img\soundon" . a_index+1 . ".bmp"
	}
	sleep speed
	GuiControl,, figure.bmp, % A_WorkingDir . "\img\soundon4.bmp"
	sleep speed
	GuiControl,, figure.bmp, % A_WorkingDir . "\img\soundon3.bmp"
	sleep speed
	GuiControl,, figure.bmp, % A_WorkingDir . "\img\soundon2.bmp"
	sleep speed
	GuiControl,, figure.bmp, % A_WorkingDir . "\img\soundon1.bmp"
	sleep speed
	GuiControl,, figure.bmp, %A_WorkingDir%\img\\figure.bmp
}