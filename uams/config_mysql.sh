#run_init_sql init.sql
sudo mysql --defaults-file=/etc/mysql/debian.cnf < /opt/Uams/init.sql
echo $?

#run_init_sql caliperserver.sql
mysql -uuams -p123456 -Duams < /opt/Uams/uams.sql
echo $?
