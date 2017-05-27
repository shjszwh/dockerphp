FROM hub.c.163.com/library/centos:centos7.3.1611

MAINTAINER Wang hao "hao.wang@hotelgg.com"

RUN yum install wget -y
RUN wget https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install  webtatic-release.rpm -y

RUN yum install php70w php70w* -y

RUN systemctl start php-fpm