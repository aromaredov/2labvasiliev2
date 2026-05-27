@echo off
set /a first=1
set /a min=0
set /a max=0

echo Enter numbers one by one.
echo Enter "-" to finish and see result.
echo.

:loop
set /p num="Number: "
if "%num%"=="-" goto result

if %first%==1 (
    set /a min=num
    set /a max=num
    set /a first=0
    goto loop
)

if %num% gtr %max% set /a max=num
if %num% lss %min% set /a min=num
goto loop

:result
echo.
echo Maximum: %max%
echo Minimum: %min%
pause