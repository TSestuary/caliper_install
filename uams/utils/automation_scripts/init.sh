#!/bin/bash
mysql -u root -p << EOF
insert into mysql.user(Host,User,Password) values("localhost","uams",password("123456"));
CREATE DATABASE IF NOT EXISTS uams;
GRANT ALL ON uams.* TO 'uams'@'%';
FLUSH PRIVILEGES;
EOF
