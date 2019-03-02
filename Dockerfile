FROM mysql:5.7

MAINTAINER Yuvraj <evalsocket@protonmail.com>

COPY etc/mysql/ /etc/mysql/

RUN sed -i '/\[mysqld\]/a server-id=1\nlog-bin' /etc/mysql/mysql.conf.d/mysqld.cnf

RUN docker-entrypoint.sh