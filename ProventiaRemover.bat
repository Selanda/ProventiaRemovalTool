@echo off
cls
echo Proventia Removal Tool
echo (Only for use on CWOPA Windows XP computers)
echo.
echo Please enter your CWOPA Login name
set /p username=
echo.
echo.
echo Removing "extend.dat"...
cd C:\Documents and Settings\%username%\Local Settings\Application Data\Microsoft\Outlook
del extend.dat
echo.
echo Modifying registry permissions (removing explicit deny)...
regini permissions.ini
echo.
echo Removing registry entries...
regedit /s keydel.reg
echo.
echo If no error messages appear above, the removal was successful.
echo Thank you for using the CWOPA Proventia Removal Tool! --Selanda
echo.
pause