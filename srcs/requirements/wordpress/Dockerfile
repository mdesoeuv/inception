FROM debian:buster

RUN apt-get update && \
apt-get install wordpress -y && \
apt-get install php-fpm -y && \
apt-get install php-mysql -y && \
apt-get install wget -y && \
apt-get install vim -y

RUN wget -c https://wordpress.org/latest.tar.gz && \
tar -xf latest.tar.gz && \
mv wordpress/ /var/www/html/ && \
chmod 755 -R /var/www/html/wordpress/ && \
chown -R www-data /var/www/html/wordpress && \
rm latest.tar.gz

COPY tools/startup.sh /

CMD ["/bin/bash","/startup.sh"]
#STOPSIGNAL SIGTERM
