@echo off 

rem if exist %windir%\my.ini GOTO CopyINI 
rem if exist c:\my.cnf GOTO CopyCNF 
rem if not exist %windir%\my.ini GOTO MainNT 
rem if not exist c:\my.cnf GOTO MainNT 
rem 
rem :CopyINI 
rem echo Safe the %windir%\my.ini as %windir%\my.ini.old! 
rem copy %windir%\my.ini /-y %windir%\my.ini.old 
rem del %windir%\my.ini 
rem GOTO WinNT 
rem 
rem :CopyCNF 
rem echo Safe the c:\my.cnf as c:\my.cnf.old! 
rem copy c:\my.cnf /-y c:\my.cnf.old 
rem del c:\my.cnf 
rem GOTO WinNT 
rem 
rem :MainNT 
rem echo Installing MySQL as an Service 
rem copy "%cd%\bin\my.cnf" /-y %windir%\my.ini

echo Installing MySQL as an Service 
bin\mysqld --install mysql --defaults-file="%cd%\bin\my.ini"

echo Try to start the MySQL deamon as service ... 
net start mysql 

:exit 
pause
