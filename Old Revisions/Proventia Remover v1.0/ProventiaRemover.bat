@echo off
cls
echo Proventia Removal Tool
echo.
pause
echo.
echo Please enter your CWOPA Login name
set /p username=
echo.
cd C:\Documents and Settings\%username%\Local Settings\Application Data\Microsoft\Outlook
del extend.dat
echo.
regedit /s keydel.reg
echo If no error messages appear above, the removal was successful.
pause