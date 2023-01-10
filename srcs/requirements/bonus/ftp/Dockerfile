FROM debian:buster

RUN apt update;\
    apt install -y vsftpd

COPY conf/vsftpd.conf /etc/vsftpd.conf
COPY tools/init.sh /init.sh

ENTRYPOINT ["bash", "/init.sh"]