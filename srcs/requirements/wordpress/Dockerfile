FROM debian:buster

RUN apt-get update && \
apt-get install wordpress -y && \
apt-get install php-fpm -y && \
apt-get install php-mysql -y && \
apt-get install wget -y && \
apt-get install vim -y

ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_NAME
ARG WORDPRESS_ADMIN
ARG WORDPRESS_ADMIN_PASSWORD

RUN mkdir -p /var/www/html/wordpress && \
chmod 755 -R /var/www/html/wordpress/ && \
chown -R www-data:www-data /var/www/html/

COPY tools/startup.sh /
COPY tools/php.ini /etc/php/7.3/fpm/
COPY tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x /startup.sh

CMD ["/startup.sh"]
#ENTRYPOINT ["./usr/sbin/php-fpm7.3", "-F"]

