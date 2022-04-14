#!/bin/bash
mysql_install_db
mysqladmin -u root password $MYSQL_ROOT_PASSWORD

mysql -e "CREATE DATABASE ${MYSQL_DATABASE} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -e "CREATE USER ${MYSQL_USER}@localhost IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_DATABASE}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
service mysql start --default-authentication-plugin=mysql_native_password
bash
