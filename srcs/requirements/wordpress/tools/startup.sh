#!/bin/bash
if test -f /var/www/html/wordpress/wp-config.php ;
then
	echo "wordpress already setup"
else
	wget -c https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	cd /var/www/html/wordpress
	wp core download --allow-root
	wp core config --dbhost=$WORDPRESS_DB_HOST --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD  --allow-root
	# sed -i "s/username_here/${WORDPRESS_DB_USER}/g" wp-config-sample.php
	# sed -i "s/password_here/${WORDPRESS_DB_PASSWORD}/g" wp-config-sample.php
	# sed -i "s/localhost/${WORDPRESS_DB_HOST}/g" wp-config-sample.php
	# sed -i "s/database_name_here/${WORDPRESS_DB_NAME}/g" wp-config-sample.php
	# mv wp-config-sample.php wp-config.php
	chmod 644 wp-config.php
	wp core install --url=$DOMAIN_NAME --title="mdesoeuv inception" --admin_name=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root
	wp user create evaluator evaluator@example.com --role=author --user_pass=temp_pass --allow-root
	cd wp-content
	mkdir -p uploads
	chgrp www-data uploads/
	chmod 775 uploads/

fi
#service php7.3-fpm start
mkdir -p /run/php/
./usr/sbin/php-fpm7.3 -F