FROM debian:buster
RUN apt-get update && apt-get install nginx -y && apt-get install vim -y

COPY conf/default /etc/nginx/sites-enabled/
COPY conf/wordpress /etc/nginx/sites-available/
COPY tools/index.nginx-debian.html /var/www/html/

RUN ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress

EXPOSE 8080
#STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
#CMD nginx -R -F
#ENTRYPOINT /usr/sbin/service nginx start