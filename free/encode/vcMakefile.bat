@echo off



rem ========================================================================
rem ����makefile�Ĺ��̣�Ҫ�����ĸ����̣��Ͱ��ĸ�����ǰ���remȥ������
rem ========================================================================


vcMakefile.exe "./encode.vcproj"
rem vcMakefile.exe "../kit/kit.vcproj"

rem vcMakefile.exe "../test/testLua/testLua.vcproj" "-ldl -lreadline -lncurses"
rem vcMakefile.exe "../test/testScl/testScl.vcproj" "-lpthread"
rem vcMakefile.exe "../test/testDB/testDB.vcproj" "-lpthread `/usr/lib/mysql/mysql_config --libs`" "makefile" "-llibmysql"
rem vcMakefile.exe "../test/testNetServer/testNetServer.vcproj" "-lpthread"
rem vcMakefile.exe "../test/testNetClient/testNetClient.vcproj" "-lpthread"
rem vcMakefile.exe "../test/testTable/testTable.vcproj"

rem vcMakefile.exe "../server/server.vcproj" "-lpthread"
rem vcMakefile.exe "../client/client.vcproj" "-lpthread"

rem vcMakefile.exe "../tool/vcMakefile/vcMakefile.vcproj"

pause
exit

