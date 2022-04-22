#!/bin/bash
service mysql start
if test -f /var/lib/mysql/$WORDPRESS_DB_NAME;
then
	echo "mariadb already configured"
else
	mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password;"
	mysql -u root -e "ALTER USER root@localhost IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
	mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE $MYSQL_DATABASE"
	mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD'"
	mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT USAGE ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION"
	mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;"
fi
