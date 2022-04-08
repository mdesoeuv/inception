FROM debian:buster

RUN apt-get update && \
apt-get install wordpress -y && \
apt-get install php-fpm -y && \
apt-get install php-mysql -y && \
apt-get install vim -y

COPY tools/startup.sh /

CMD ["/bin/bash","/startup.sh"]
#STOPSIGNAL SIGTERM
