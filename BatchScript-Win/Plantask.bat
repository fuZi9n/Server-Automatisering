@echo off

set script=Sti\Til\Script.bat

schtasks /create /sc daily /tn "Regelmæssig Opgave" /tr "%script%" /st 08:00

echo Planlagt opgave oprettet.

pause