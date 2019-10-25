#Deplyment of Database
create database assets;
grant all on testdb.* to 'root' identified by 'password';
exit

mysql -u root -p
use assets;

#deployment of table
create table servers (name VARCHAR(255) PRIMARY KEY, ip varchar(15), os TEXT);

#adding data to the table
INSERT INTO `servers` (`name`,`ip`,`os`) VALUES ('TestServer01','192.168.1.1','CentOS7'), ('TestServer02','192.168.1.2','CentOS6'), ('TestServer03','192.168.1.3','CentOS7'), ('TestServer04','192.168.1.4','Server2012');

