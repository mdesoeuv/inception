FROM debian:buster

RUN apt-get update && \
apt-get install wordpress -y && \
apt-get install php-fpm -y && \
apt-get install php-mysql -y && \
apt-get install vim -y


#COPY tools/docker-entrypoint.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/docker-entrypoint.sh
#CMD ./usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["bash"]
#STOPSIGNAL SIGTERM
