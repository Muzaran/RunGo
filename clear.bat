@echo off
title Close Programs
color a
mode con: cols=80 lines=20
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                Are you sure to
echo                               clear all programs?
echo.
echo.
echo.
echo.
echo.
pause
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             If Not please click the 
echo                                 (X) button !!
echo.
echo.
echo.
echo.
echo.
pause
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                Are you sure??
echo                                Are you sure??
echo.
echo.
echo.
echo.
echo.
pause
cls

:: Menutup program berdasarkan window title
taskkill /IM mintty.exe /F
nircmd win close ititle "httpd"
nircmd win close ititle "mysql"
nircmd win close ititle "edge"
nircmd win close ititle "npm"
nircmd win close ititle "terminal"
nircmd win close ititle "run"
nircmd win close ititle "cmd.exe"

:: Display messages with Matrix effect
call :matrix_effect "                         artisan close"
call :matrix_effect "                         httpd close"
call :matrix_effect "                         sql close"
call :matrix_effect "                         npm dev close"
call :matrix_effect "                         access close" 1
call :matrix_effect "                         GOODBYE SIR" 1

:: Jeda 2 detik sebelum keluar
timeout /t 2 >nul

:: Keluar dari program
exit

:: Matrix text effect function
:matrix_effect
setlocal enabledelayedexpansion
set "str=%~1"
set "time=%~2"

if "%time%"=="" set "time=1" :: Default to 1 second if no time is provided

for /l %%i in (1,1,2) do (
    cls
    for %%j in (1,2,3,4,5,6,7,8,9,10) do (
        set "char=!random!"
        set /a "char=!char! %% 2"
        if !char! lss 1 (
            echo.
            echo         !str!
            echo.
        ) else (
            echo !random! | set /p="."
        )
    )
    timeout /t %time% >nul
)
endlocal
