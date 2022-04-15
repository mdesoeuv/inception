#!/bin/bash
mkdir -p /ssl_cert
openssl req -x509 -nodes -days 360 -newkey rsa:2048 -keyout /ssl_cert/private.key -out /ssl_cert/certificate.crt -subj "/C=FR/ST=Rhone/L=Lyon/O=42Lyon/CN=mdesoeuv"
