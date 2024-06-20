@echo off

set mappesti=C:\OvervågningsMappe

set filtype=.txt

:loop

for %%i in (%mappesti%\*%filtype%) do (

    echo Ny fil fundet: %%~nxi

)

timeout /t 10 /nobreak

goto loop