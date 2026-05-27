@echo off
if "%1"=="" (
    echo Usage: task7.bat [number]
    echo Example: task7.bat 5
    exit /b
)

if %1 lss 0 (
    echo Error: Negative number! Enter 0 or positive.
    exit /b
)

if %1 gtr 12 (
    echo Error: Number too big! Maximum is 12.
    echo 13! = 6227020800 exceeds 32-bit limit.
    exit /b
)

set /a result=1
set /a i=1

:loop
if %i% gtr %1 goto done
set /a result*=i
set /a i+=1
goto loop

:done
echo %1! = %result%
pause