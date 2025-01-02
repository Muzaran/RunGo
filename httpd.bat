color a
mode con: cols=70 lines=20
title httpd
call config.bat
cd %HTTPD%
httpd.exe --console
