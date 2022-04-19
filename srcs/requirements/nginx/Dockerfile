FROM debian:buster
RUN apt-get update && \
apt-get install nginx -y && \
apt-get install openssl && \
apt-get install vim -y

COPY conf/wordpress.conf /etc/nginx/sites-available/
COPY conf/nginx.conf /etc/nginx/

RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/wordpress.conf && \
rm -f /etc/nginx/sites-enabled/default

RUN mkdir -p /logs

COPY tools/startup.sh /
RUN chmod +x /startup.sh
RUN ./startup.sh

#nginx stops with sigquit instead of sigterm
STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]