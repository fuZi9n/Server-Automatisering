@echo off
setlocal enabledelayedexpansion

set password=Kode1234!

if not exist usernames.txt (
    echo usernames.txt file not found!
    exit /b 1
)

for /f "tokens=*" %%i in (usernames.txt) do (
    net user %%i %password% /add
    if %errorlevel% equ 0 (
        echo User %%i created successfully.
    ) else (
        echo Failed to create user %%i.
    )
)

pause