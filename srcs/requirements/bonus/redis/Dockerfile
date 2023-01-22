FROM debian:buster

RUN apt update;\
    apt install -y redis-server;

COPY conf/redis.conf /etc/redis/redis.conf

ENTRYPOINT [ "redis-server", "--protected-mode", "no" ]
