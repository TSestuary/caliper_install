insert into mysql.user(Host,User,Password) values("%","uams",password("123456"));
CREATE DATABASE IF NOT EXISTS uams;
GRANT ALL ON uams.* TO 'uams'@'%';
UPDATE mysql.user SET Password=PASSWORD('root') WHERE User='root';
FLUSH PRIVILEGES;

