FROM hub.c.163.com/library/centos:centos7.3.1611

MAINTAINER Wang hao "hao.wang@hotelgg.com"

RUN yum install php70w php70w-opcache php70w-fpm php70w-pecl-redis -y

RUN systemctl start php-fpm