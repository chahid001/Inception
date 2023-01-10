FROM debian:buster

RUN apt update;\
    apt install -y wget

COPY ./tools/init.sh /init.sh

CMD ["bash", "/init.sh"]