w32tm /config /update /manualpeerlist:time.windows.com
net stop w32time
net start w32time
pause