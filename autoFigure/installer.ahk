#NoEnv
if not A_IsAdmin
{
Run *RunAs %A_ScriptFullPath%
ExitApp
}
FileCreateDir, %A_ProgramFiles%\littleBot
SetWorkingDir %A_ProgramFiles%\littleBot
FileCreateDir, %A_ProgramFiles%\littleBot\dinoPlayer
FileCreateDir, %A_ProgramFiles%\littleBot\img
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\figure.exe, %A_ProgramFiles%\littleBot\figure.exe, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\dinoPlayer\dinoPlayer.exe, %A_ProgramFiles%\littleBot\dinoPlayer\dinoPlayer.exe, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\dinoPlayer\dinoPlayerBirdHandler.exe, %A_ProgramFiles%\littleBot\dinoPlayer\dinoPlayerBirdHandler.exe, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\figure.bmp, %A_ProgramFiles%\littleBot\img\figure.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\figure2.bmp, %A_ProgramFiles%\littleBot\img\figure2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\figure3.bmp, %A_ProgramFiles%\littleBot\img\figure3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\figure4.bmp, %A_ProgramFiles%\littleBot\img\figure4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton.bmp, %A_ProgramFiles%\littleBot\img\interneton.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton2.bmp, %A_ProgramFiles%\littleBot\img\interneton2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton3.bmp, %A_ProgramFiles%\littleBot\img\interneton3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton4.bmp, %A_ProgramFiles%\littleBot\img\interneton4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton5.bmp, %A_ProgramFiles%\littleBot\img\interneton5.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton6.bmp, %A_ProgramFiles%\littleBot\img\interneton6.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton7.bmp, %A_ProgramFiles%\littleBot\img\interneton7.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\interneton8.bmp, %A_ProgramFiles%\littleBot\img\interneton8.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat.bmp, %A_ProgramFiles%\littleBot\img\lowBat.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat2.bmp, %A_ProgramFiles%\littleBot\img\lowBat2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat3.bmp, %A_ProgramFiles%\littleBot\img\lowBat3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat4.bmp, %A_ProgramFiles%\littleBot\img\lowBat4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat5.bmp, %A_ProgramFiles%\littleBot\img\lowBat5.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat6.bmp, %A_ProgramFiles%\littleBot\img\lowBat6.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\lowBat7.bmp, %A_ProgramFiles%\littleBot\img\lowBat7.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted.bmp, %A_ProgramFiles%\littleBot\img\muted.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted2.bmp, %A_ProgramFiles%\littleBot\img\muted2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted3.bmp, %A_ProgramFiles%\littleBot\img\muted3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted4.bmp, %A_ProgramFiles%\littleBot\img\muted4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted5.bmp, %A_ProgramFiles%\littleBot\img\muted5.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\muted6.bmp, %A_ProgramFiles%\littleBot\img\muted6.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\nointernet.bmp, %A_ProgramFiles%\littleBot\img\nointernet.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\nointernet2.bmp, %A_ProgramFiles%\littleBot\img\nointernet2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\nointernet3.bmp, %A_ProgramFiles%\littleBot\img\nointernet3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\nointernet4.bmp, %A_ProgramFiles%\littleBot\img\nointernet4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\nointernet5.bmp, %A_ProgramFiles%\littleBot\img\nointernet5.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\soundon.bmp, %A_ProgramFiles%\littleBot\img\soundon.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\soundon2.bmp, %A_ProgramFiles%\littleBot\img\soundon2.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\soundon3.bmp, %A_ProgramFiles%\littleBot\img\soundon3.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\soundon4.bmp, %A_ProgramFiles%\littleBot\img\soundon4.bmp, 1
FileInstall C:\Users\User\Documents\apps\ahk\autoFigure\img\soundon5.bmp, %A_ProgramFiles%\littleBot\img\soundon5.bmp, 1
FileCreateShortcut, %A_ProgramFiles%\littleBot\figure.exe, %A_Startup%\figure.lnk
FileCreateShortcut, %A_ProgramFiles%\littleBot\figure.exe, %A_Desktop%\figure.lnk
msgbox installed successfully!