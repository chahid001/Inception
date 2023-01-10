FROM debian:buster

RUN apt update;\
    apt install -y wget apache2 php libapache2-mod-php php-mysql;

COPY ./conf/ports.conf /etc/apache2/ 
COPY tools/init.sh /var/www/init.sh

ENTRYPOINT ["bash", "/var/www/init.sh"]