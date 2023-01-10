FROM debian:buster

RUN apt update;\
    apt install -y php php-fpm php-mysql php-redis wget;

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/init.sh /var/www/init.sh
COPY ./conf/wp-config.php /var/www/wp-config.php

ENTRYPOINT ["bash", "/var/www/init.sh"]