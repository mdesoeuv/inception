FROM debian:buster
RUN apt-get update && apt-get install nginx -y && apt-get install vim -y

#COPY conf/default /etc/nginx/sites-enabled/
COPY conf/wordpress.conf /etc/nginx/sites-available/
COPY tools/index.nginx-debian.html /var/www/html/
COPY conf/nginx.conf /etc/nginx/

RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/wordpress.conf && \
rm -f /etc/nginx/sites-enabled/default && \
mkdir -p /logs

EXPOSE 8000
#STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
#CMD nginx -R -F
#ENTRYPOINT /usr/sbin/service nginx start