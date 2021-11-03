@echo off
color 0a
echo.
set /p a="Enter the name for the exe : "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B %ERRORLEVEL% 
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B %ERRORLEVEL% 
)

:main
echo.
echo Name is: %a% 
pyarmor pack --clean -n %a% -e "--onefile --noconsole --icon NONE --uac-admin" .\main.py
rmdir /s /q build
EXIT /B %ERRORLEVEL% 

:error
echo.
echo bro enter a name
EXIT /B %ERRORLEVEL% 