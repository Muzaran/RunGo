@echo off
title Close Programs
color a
mode con: cols=80 lines=20

echo.
echo                   \      /                       ~ ~ ~ ~ ~
echo                    .-'-.                        ~ ~ ~ ~ ~ ~ ~
echo                 -- (   ) --  Have a Good Day !!    ~ ~ ~ ~ ~ ~
echo                    `-'-'                           ~ ~ ~ ~ ~
echo                   /      \                        ~ ~ ~ ~ ~
echo                  *                                   /\
echo                 /_\                                 /  \
echo                /___\                               /    \
echo               /_____\                             /      \
echo              /_______\                           /        \
echo             /_________\                         /__________\
echo            /___________\                             III
echo                 III                                  III
echo                 III                                  III
echo                 III                                  III
echo  ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
echo.
echo.

:: Input dari user
set /p a=Type x to start clear.bat: 

if "%a%"=="x" (
    cls
    echo Running clear.bat...
    call clear.bat
) else (
    echo Program exited.
    timeout /t 1 >nul
    exit
)
