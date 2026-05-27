@echo off
if "%2"=="" (
    echo Usage: task4.bat [folder] [extension]
    echo Example: task4.bat C:\Test txt
    exit /b
)
if not exist %1 (
    echo Folder %1 not found!
    exit /b
)
echo Files with extension .%2 in folder %1:
dir %1\*.%2 /b 2>nul
if errorlevel 1 echo No files found.
pause