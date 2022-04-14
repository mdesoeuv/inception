FROM debian:buster

RUN apt-get update && \
apt-get install mariadb-server -y && \
chmod -R 777 /var/lib/mysql && \
apt-get install vim -y

COPY conf/my.cnf /etc/mysql/
COPY tools/startup.sh /
RUN chmod +x /startup.sh

CMD ["/bin/bash","/startup.sh"]
