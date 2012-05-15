
set REPOS_PATH=%1

set REVO=%2

set SVNLOOK="C:/svn/bin/svnlook.exe"

rem echo %REPOS_PATH% , %REVO% > svn_repo.txt

%SVNLOOK% info %REPOS_PATH% -r %REVO% >> svnlog.txt
echo ------------------------------------ >> svnlog.txt

rem FOR /F "usebackq delims==" %%i IN (`%%SVNLOOK%% log -t %TXN% %REPOS_PATH%`) DO exit 0

exit 0

