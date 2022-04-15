#!/bin/bash
if /usr/local/bin/wp ;
then
	echo "wp-cli installed"
else
	wget -c https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	cd /var/www/html/wordpress
	wp core download --allow-root
	wp core config --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD  --allow-root
	chmod 644 wp-config.php
	wp core install --url=$DOMAIN_NAME --title="mdesoeuv inception" --admin_name=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --allow-root
	cd wp-content
	mkdir -p uploads
	chgrp www-data uploads/
	chmod 775 uploads/
fi
service php7.3-fpm start
bash
