FROM debian:buster

RUN apt-get update && \
apt-get install mariadb-server -y
#chmod -R 777 /var/lib/mysql && \
#apt-get install vim -y

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_DATABASE

#COPY conf/my.cnf /etc/mysql/
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/startup.sh /
RUN chmod +x /startup.sh
RUN ./startup.sh

ENTRYPOINT [ "mysqld" ]