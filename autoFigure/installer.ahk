#NoEnv
if not A_IsAdmin
{
Run *RunAs %A_ScriptFullPath%
ExitApp
}
FileCreateDir, %A_ProgramFiles%\littleBot
SetWorkingDir %A_ProgramFiles%\littleBot
FileCreateDir, %A_ProgramFiles%\littleBot\dinoPlayer
FileCreateDir, %A_ProgramFiles%\littleBot\imgFileInstall figure.exe, %A_ProgramFiles%\littleBot\figure.exe
FileInstall FileInstall.txt, %A_ProgramFiles%\littleBot\FileInstall.txt
FileInstall installer.exe, %A_ProgramFiles%\littleBot\installer.exe
FileInstall dinoPlayer\dinoPlayer.exe, %A_ProgramFiles%\littleBot\dinoPlayer\dinoPlayer.exe
FileInstall dinoPlayer\dinoPlayerBirdHandler.exe, %A_ProgramFiles%\littleBot\dinoPlayer\dinoPlayerBirdHandler.exe
FileInstall dinoPlayer\dinoPlayerBirdHandler.exe, %A_ProgramFiles%\littleBot\dinoPlayer\dinoPlayerBirdHandler.exe
FileInstall img\figure.bmp, %A_ProgramFiles%\littleBot\img\figure.bmp
FileInstall img\figure2.bmp, %A_ProgramFiles%\littleBot\img\figure2.bmp
FileInstall img\figure3.bmp, %A_ProgramFiles%\littleBot\img\figure3.bmp
FileInstall img\figure4.bmp, %A_ProgramFiles%\littleBot\img\figure4.bmp
FileInstall img\interneton.bmp, %A_ProgramFiles%\littleBot\img\interneton.bmp
FileInstall img\interneton2.bmp, %A_ProgramFiles%\littleBot\img\interneton2.bmp
FileInstall img\interneton3.bmp, %A_ProgramFiles%\littleBot\img\interneton3.bmp
FileInstall img\interneton4.bmp, %A_ProgramFiles%\littleBot\img\interneton4.bmp
FileInstall img\interneton5.bmp, %A_ProgramFiles%\littleBot\img\interneton5.bmp
FileInstall img\interneton6.bmp, %A_ProgramFiles%\littleBot\img\interneton6.bmp
FileInstall img\interneton7.bmp, %A_ProgramFiles%\littleBot\img\interneton7.bmp
FileInstall img\interneton8.bmp, %A_ProgramFiles%\littleBot\img\interneton8.bmp
FileInstall img\lowBat.bmp, %A_ProgramFiles%\littleBot\img\lowBat.bmp
FileInstall img\lowBat2.bmp, %A_ProgramFiles%\littleBot\img\lowBat2.bmp
FileInstall img\lowBat3.bmp, %A_ProgramFiles%\littleBot\img\lowBat3.bmp
FileInstall img\lowBat4.bmp, %A_ProgramFiles%\littleBot\img\lowBat4.bmp
FileInstall img\lowBat5.bmp, %A_ProgramFiles%\littleBot\img\lowBat5.bmp
FileInstall img\lowBat6.bmp, %A_ProgramFiles%\littleBot\img\lowBat6.bmp
FileInstall img\lowBat7.bmp, %A_ProgramFiles%\littleBot\img\lowBat7.bmp
FileInstall img\muted.bmp, %A_ProgramFiles%\littleBot\img\muted.bmp
FileInstall img\muted2.bmp, %A_ProgramFiles%\littleBot\img\muted2.bmp
FileInstall img\muted3.bmp, %A_ProgramFiles%\littleBot\img\muted3.bmp
FileInstall img\muted4.bmp, %A_ProgramFiles%\littleBot\img\muted4.bmp
FileInstall img\muted5.bmp, %A_ProgramFiles%\littleBot\img\muted5.bmp
FileInstall img\muted6.bmp, %A_ProgramFiles%\littleBot\img\muted6.bmp
FileInstall img\nointernet.bmp, %A_ProgramFiles%\littleBot\img\nointernet.bmp
FileInstall img\nointernet2.bmp, %A_ProgramFiles%\littleBot\img\nointernet2.bmp
FileInstall img\nointernet3.bmp, %A_ProgramFiles%\littleBot\img\nointernet3.bmp
FileInstall img\nointernet4.bmp, %A_ProgramFiles%\littleBot\img\nointernet4.bmp
FileInstall img\nointernet5.bmp, %A_ProgramFiles%\littleBot\img\nointernet5.bmp
FileInstall img\soundon.bmp, %A_ProgramFiles%\littleBot\img\soundon.bmp
FileInstall img\soundon2.bmp, %A_ProgramFiles%\littleBot\img\soundon2.bmp
FileInstall img\soundon3.bmp, %A_ProgramFiles%\littleBot\img\soundon3.bmp
FileInstall img\soundon4.bmp, %A_ProgramFiles%\littleBot\img\soundon4.bmp
FileInstall img\soundon5.bmp, %A_ProgramFiles%\littleBot\img\soundon5.bmp
FileCreateShortcut, %A_ProgramFiles%\littleBot\figure.exe, %A_Startup%\figure.exe
msgbox installed successfully!