/*USE mysql;*/
CREATE USER IF NOT EXISTS 'uams'@'%' IDENTIFIED by '123456';
CREATE DATABASE IF NOT EXISTS uams;
GRANT ALL ON uams.* TO 'uams'@'%';
FLUSH PRIVILEGES;
