#!/bin/bash

#if test -f "/etc/mysql/";
#then
#	echo "mariadb installed"
#fi
#mysql_install_db
service mysql start
#mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password;"
#mysql -u root -e "ALTER USER root@localhost IDENTIFIED BY ${MYSQL_ROOT_PASSWORD};"
#mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE $MYSQL_DATABASE"
#mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD'"
#mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT USAGE ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION"
#mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;"
bash
