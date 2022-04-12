FROM debian:buster

RUN apt-get update && \
apt-get install mariadb-server -y && \
chmod -R 777 /var/lib/mysql && \
apt-get install vim -y

#STOPSIGNAL SIGTERM
COPY tools/startup.sh /

CMD ["/bin/bash","/startup.sh"]
