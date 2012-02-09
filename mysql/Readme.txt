

当前linux使用版本
mysql 5.1.52

当前windows使用版本
mysql 5.1.52


test.sql是创建测试库的sql


------------------------------------------------------------------------------------------------------------
如何在linux下启动mysql.txt
/etc/init.d/mysqld start 

或者执行：

service mysqld start

------------------------------------------------------------------------------------------------------------


windows下测试用的库是127.0.0.1:3306

------------------------------------------------------------------------------------------------------------

linux下编译选项：
[root@bogon ~]# /usr/lib/mysql/mysql_config --libs
-rdynamic -L/usr/lib/mysql -lmysqlclient -lz -lcrypt -lnsl -lm -L/usr/lib -lssl -lcrypto



------------------------------------------------------------------------------------------------------------


配置文件：
linux下在etc/my.cfg
windows下载c:/windows/my.ini

show status like "%max%"

show variables like "%max%"

显示所有数据库
show databases;

显示所有表格
show tables;

执行一个sql文件
source test.sql

------------------------------------帐户安全相关------------------------------------
参见mysql5.1参考手册 "5.8.2. 向MySQL增加新用户账户"

通过SHOW GRANTS语句检查查看谁已经访问了什么
---------------------------------------------------------------------------------------


mysql字符集
注意，在linux的my.cnf配置文件中，必须
[mysqld]
default-character-set=utf8

[client]
default-character-set=utf8

然后在代码中，
mysql_set_character_set(pConnection, "utf8");
或者
mysql_set_character_set(pConnection, "gbk");
都行

同时注意，建库建表的时候，都必须按照如下方式：
CREATE TABLE `player` (
  `name` varchar(255) default NULL,
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


------------------------------------------------------------------------------------------------------------

CentOS下卸载Mysql 

[root@localhost ~]# rpm -qa|grep mysql 

mod_auth_mysql-2.6.1-2.2 

php-mysql-4.3.9-3.15 

mysql-devel-4.1.20-1.RHEL4.1 

mysql-4.1.20-1.RHEL4.1 

mysqlclient10-3.23.58-4.RHEL4.1 

libdbi-dbd-mysql-0.6.5-10.RHEL4.1 



说明：rpm –qa | grep mysql 命令是为了把mysql相关的包都列出来，我上面的例子是Linux AS4默认安装mysql的rpm软件包列表，如果是别的Linux版本列出来的列表有可能会不一样，不过不用担心，不管是什么，卸载都从最下面的一个包开始，直到卸载掉第一个为止。 



比如：在这个例子中，我们应该先卸载libdbi-dbd-mysql-0.6.5-10.RHEL4.1 方法如下：rpm –e -dbd-mysql-0.6.5-10.RHEL4.1 



说明：rpm –e 是卸载rpm包的命令，后面是包名称，最后的版本号是不用打的，比如我们下一步卸载mysqlclient10-3.23.58-4.RHEL4.1包，方法如下： 



rpm –e mysqlclient






mysql-front5.1 注册码：

O9wEVeaZ3ek7MtT3MmcRXQgHssPk
X1UvsvsMs09+Izy20MLS9TYJ5Fns
YBqFw31kKmo8AmcmNHEeqejBtI99
ITgrbG6bMlYOGkjqsrCUi1IvpoBA
tkCCniHtbV2YDrUPuFpCi3Dr1mnR
VRgrNP0saeKs3B7kxSH3s7f0c/JX
o44FyWdb/LLbjdzBdb6k4jEMfzsn
+qNu0JlnQoqD0D2seVbEi6QXbijE
xJCqu/1FTApiBbr69X7bG3bY25qB
2GUKH1QxzWE4wVO8PIysxXhPTA==




