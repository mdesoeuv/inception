FROM debian:buster
RUN apt-get update && apt-get install nginx -y && apt-get install vim -y

COPY conf/default /etc/nginx/sites-enabled/
COPY conf/nginx.conf /etc/nginx/
COPY tools/index.nginx-debian.html /var/www/html/

EXPOSE 8080
#STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
#CMD nginx -R -F
#ENTRYPOINT /usr/sbin/service nginx start