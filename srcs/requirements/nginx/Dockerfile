FROM debian:buster

RUN apt update;\
    apt install -y nginx openssl;

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/inception.key -out /etc/ssl/certs/inception.crt -subj "/C=MA/ST=Rabat/L=Rabat/O=LEET/OU=schahid/CN=schahid@42.fr"

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]