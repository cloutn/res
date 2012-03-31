@echo off

rem if "%OS%" == "Windows_NT" goto WinNT
rem 
rem :Win9X
rem echo Don't be stupid! Win9x don't know Services
rem echo Please use mysql_stop.bat instead
rem goto exit
rem 
rem :WinNT

echo now stopping MySQL when it runs
net stop mysql

echo Uninstalling MySql-Service
bin\mysqld.exe --remove mysql

rem if not exist %windir%\my.ini GOTO exit
rem echo Remove %windir%\my.ini
rem del %windir%\my.ini

:exit
pause
