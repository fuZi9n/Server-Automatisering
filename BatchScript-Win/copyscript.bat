@echo off

set kilde=c:\SETSOURCEFOLDER

set destination=D:\SERDESTINATIONFOLDER

set dato=%date:~6,4%%date:~3,2%%date:~0,2%

xcopy %kilde% %destination%\Backup_%dato% /E /I

echo Copy Done!

pause