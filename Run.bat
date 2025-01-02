@echo off
color 0a
mode con: cols=70 lines=20
call config.bat
cd %TREE%
tree
cd %RUN%
start tree.bat
start artisan.sh
timeout /t 3 > nul
start tree.bat
start httpd.bat
timeout /t 3 > nul
start tree.bat
start mysql.bat
timeout /t 3 > nul
start tree.bat
start npm.bat
timeout /t 3 > nul
start tree.bat
start position.bat

timeout /t 11 > nul

start http://127.0.0.1/phpmyadmin -maximized
start http://127.0.0.1:8000/


timeout /t 6 > nul
start dor.bat
