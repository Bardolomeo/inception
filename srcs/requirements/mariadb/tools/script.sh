#!/bin/bash

echo well
service mysql start
# echo "CREATE DATABASE IF NOT EXISTS $db1_name ;" > db1.sql
# echo "CREATE USER IF NOT EXISTS '$db1_user'@'%' IDENTIFIED BY '$db1_pwd' ;" >> db1.sql
# echo "GRANT ALL PRIVILEGES ON $db1_name.* TO '$db1_user'@'%' ;" >> db1.sql
# echo "ALTER USER 'root'@'localhost' IDENTIFIED BY $sql_pass ;" >> db1.sql
# echo "FLUSH PRIVILEGES;" >> db1.sql

# mysql -u root -p $sql_pass 
# < db1.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
