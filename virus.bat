echo off

@REM :: Handle CLI Args
@REM IF [%1]==[] (
@REM echo No wallpaper path provided, please provide a full qualified path. Ex: C:\dir1\dir2\wallpaper.jpg
@REM exit /b 1
@REM )

:: Commands
echo Changing wallpaper to: %1
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\22051\Downloads\images - Copy.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

shutdown /r /t 0