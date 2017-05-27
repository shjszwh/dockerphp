FROM hub.c.163.com/library/centos:centos7.3.1611

MAINTAINER Wang hao "hao.wang@hotelgg.com"

RUN yum install epel-release -y
RUN yum install https://centos7.iuscommunity.org/ius-release.rpm -y
RUN yum install nginx -y
RUN yum install redis -y

ADD tmp/*  /tmp/

RUN yum install /tmp/epel-release-latest-7.noarch.rpm && yum install /tmp/webtatic-release.rpm

RUN yum install php70w php70w-opcache php70w-fpm php70w-pecl-redis -y

RUN systemctl start php-fpm