

��ǰlinuxʹ�ð汾
mysql 5.1.52

��ǰwindowsʹ�ð汾
mysql 5.1.52


test.sql�Ǵ������Կ��sql


------------------------------------------------------------------------------------------------------------
�����linux������mysql.txt
/etc/init.d/mysqld start 

����ִ�У�

service mysqld start

------------------------------------------------------------------------------------------------------------


windows�²����õĿ���127.0.0.1:3306

------------------------------------------------------------------------------------------------------------

linux�±���ѡ�
[root@bogon ~]# /usr/lib/mysql/mysql_config --libs
-rdynamic -L/usr/lib/mysql -lmysqlclient -lz -lcrypt -lnsl -lm -L/usr/lib -lssl -lcrypto



------------------------------------------------------------------------------------------------------------


�����ļ���
linux����etc/my.cfg
windows����c:/windows/my.ini

show status like "%max%"

show variables like "%max%"

��ʾ�������ݿ�
show databases;

��ʾ���б��
show tables;

ִ��һ��sql�ļ�
source test.sql

------------------------------------�ʻ���ȫ���------------------------------------
�μ�mysql5.1�ο��ֲ� "5.8.2. ��MySQL�������û��˻�"

ͨ��SHOW GRANTS�����鿴˭�Ѿ�������ʲô
---------------------------------------------------------------------------------------


mysql�ַ���
ע�⣬��linux��my.cnf�����ļ��У�����
[mysqld]
default-character-set=utf8

[client]
default-character-set=utf8

Ȼ���ڴ����У�
mysql_set_character_set(pConnection, "utf8");
����
mysql_set_character_set(pConnection, "gbk");
����

ͬʱע�⣬���⽨���ʱ�򣬶����밴�����·�ʽ��
CREATE TABLE `player` (
  `name` varchar(255) default NULL,
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


------------------------------------------------------------------------------------------------------------

CentOS��ж��Mysql 

[root@localhost ~]# rpm -qa|grep mysql 

mod_auth_mysql-2.6.1-2.2 

php-mysql-4.3.9-3.15 

mysql-devel-4.1.20-1.RHEL4.1 

mysql-4.1.20-1.RHEL4.1 

mysqlclient10-3.23.58-4.RHEL4.1 

libdbi-dbd-mysql-0.6.5-10.RHEL4.1 



˵����rpm �Cqa | grep mysql ������Ϊ�˰�mysql��صİ����г������������������Linux AS4Ĭ�ϰ�װmysql��rpm������б�����Ǳ��Linux�汾�г������б��п��ܻ᲻һ�����������õ��ģ�������ʲô��ж�ض����������һ������ʼ��ֱ��ж�ص���һ��Ϊֹ�� 



���磺����������У�����Ӧ����ж��libdbi-dbd-mysql-0.6.5-10.RHEL4.1 �������£�rpm �Ce -dbd-mysql-0.6.5-10.RHEL4.1 



˵����rpm �Ce ��ж��rpm������������ǰ����ƣ����İ汾���ǲ��ô�ģ�����������һ��ж��mysqlclient10-3.23.58-4.RHEL4.1�����������£� 



rpm �Ce mysqlclient






mysql-front5.1 ע���룺

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




