#!/bin/bash



service mysql start 


echo "CREATE DATABASE IF NOT EXISTS $db1_name ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$db1_user'@'%' IDENTIFIED BY '$db1_pwd' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $db1_name.* TO '$db1_user'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql
#
cat /etc/mysql/mariadb.conf.d/50-server.cnf | grep bind-address
#
mysql < db1.sql
#
#
#kill $(cat /var/run/mysqld/mysqld.pid)

#mysqld
