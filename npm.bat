
title npm
mode con: cols=70 lines=20
color a
call config.bat
cd %PROJECT%


nircmd win move ititle "npm" -80 -50 
cls
npm run dev