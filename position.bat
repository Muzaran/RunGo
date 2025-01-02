@echo off
color 0a
title Terminal
mode con: cols=80 lines=20

:: Set window position using nircmd (Adjust values as needed)
nircmd win move ititle "artisan.sh" -100 -50
nircmd win move ititle "httpd" -60 300
nircmd win move ititle "cmd.exe" -60 300
nircmd win move ititle "mysql" 630 -50
nircmd win move ititle "npm" 630 300
nircmd win move ititle "terminal" 400 200

:: Display messages with Matrix effect
call :matrix_effect "                  artisan complete"
call :matrix_effect "                  httpd complete"
call :matrix_effect "                  sql complete"
call :matrix_effect "                  npm dev complete"
call :matrix_effect "                  access complete"
call :matrix_effect "                  WELCOME"

exit /b

:: Matrix text effect function
:matrix_effect
setlocal enabledelayedexpansion
set "str=%~1"
set "time=%~2"

:: Default time to 1 second if not provided or invalid
if "%time%"=="" set "time=1"
for /f "delims=0123456789" %%a in ("%time%") do set "time=1"

for /l %%i in (1,1,2) do (
    cls
    for %%j in (1,2,3,4,5,6,7,8,9,10) do (
        set "char=!random!"
        set /a "char=!char! %% 2"
        if !char! lss 1 (
            echo.
            echo                                       !str!
            echo.
        ) else (
            echo !random! | set /p="."
        )
    )
    timeout /t %time% >nul
)
endlocal

exit /b

exit

