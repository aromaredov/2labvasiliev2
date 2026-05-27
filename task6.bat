@echo off
if "%1"=="" (
    echo Usage: task6.bat [folder]
    echo Example: task6.bat C:\Test
    exit /b
)
if not exist %1 (
    echo Folder %1 not found!
    exit /b
)

set /a count=0
for /d %%d in (%1\*) do set /a count+=1
echo Number of subdirectories: %count%
pause