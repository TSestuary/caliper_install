#!/bin/bash
mysql -u root -p <<EOF
CREATE USER 'uams'@'%' IDENTIFIED by '123456';
CREATE DATABASE IF NOT EXISTS uams;
GRANT ALL ON uams.* TO 'uams'@'%';
FLUSH PRIVILEGES;
EOF

#run_init_sql caliperserver.sql
mysql -uuams -p123456 -Duams < /opt/Uams/uams.sql
echo $?
