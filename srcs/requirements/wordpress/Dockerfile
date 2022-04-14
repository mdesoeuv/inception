FROM debian:buster

RUN apt-get update && \
apt-get install wordpress -y && \
apt-get install php-fpm -y && \
apt-get install php-mysql -y && \
apt-get install wget -y && \
apt-get install vim -y

RUN mkdir -p /var/www/html/wordpress && \
chmod 755 -R /var/www/html/wordpress/ && \
chown -R www-data:www-data /var/www/html/

COPY tools/startup.sh /
COPY tools/php.ini /etc/php/7.3/fpm/
COPY tools/www.conf /etc/php/7.3/fpm/pool.d/
COPY tools/wp-config.php /var/www/html/wordpress/

EXPOSE 9000
CMD ["/bin/bash","/startup.sh"]
#STOPSIGNAL SIGTERM
