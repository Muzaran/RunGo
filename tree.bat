color a
cls
call config.bat
cd %TREE%
mode con: cols=70 lines=20


title loading


tree

tree
nircmd win move ititle "loading" 630 -50
tree
nircmd win move ititle "loading" -60 300
tree

exit