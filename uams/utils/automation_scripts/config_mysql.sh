#run_init_sql init.sql
sudo mysql --defaults-file=/etc/mysql/debian.cnf < /opt/uams/utils/automation_scripts/init.sql
echo $?

#run_init_sql caliperserver.sql
mysql -uuams -p123456 -Duams < /opt/uams/utils/automation_scripts/uams.sql
echo $?
