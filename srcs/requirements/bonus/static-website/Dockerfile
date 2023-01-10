FROM debian:buster

RUN apt update

COPY conf/index.html /var/www/index.html
COPY tools/init.sh /init.sh

ENTRYPOINT ["bash", "/init.sh"]