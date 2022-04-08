FROM debian:buster

RUN apt-get update && \
apt-get install mariadb-server -y && \
apt-get install vim -y

#STOPSIGNAL SIGTERM
COPY tools/startup.sh /

CMD ["/bin/bash","/startup.sh"]
