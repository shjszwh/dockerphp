FROM hub.c.163.com/library/centos:centos7.3.1611

MAINTAINER Wang hao "hao.wang@hotelgg.com"

RUN yum install wget -y
RUN wget https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install  webtatic-release.rpm -y

RUN yum install php70w -y
RUN yum install php70w-bcmath -y
RUN yum install php70w-cli -y
RUN yum install php70w-common -y
RUN yum install php70w-dba -y
RUN yum install php70w-devel -y
RUN yum install php70w-embedded -y
RUN yum install php70w-enchant -y
RUN yum install php70w-fpm -y
RUN yum install php70w-gd -y
RUN yum install php70w-imap -y
RUN yum install php70w-interbase -y
RUN yum install php70w-intl -y
RUN yum install php70w-ldap -y
RUN yum install php70w-mbstring -y
RUN yum install php70w-mcrypt -y
RUN yum install php70w-mysql -y
RUN yum install php70w-mysqlnd -y
RUN yum install php70w-odbc -y
RUN yum install php70w-opcache -y
RUN yum install php70w-pdo -y
RUN yum install php70w-pdo_dblib -y
RUN yum install php70w-pecl-apcu -y
RUN yum install php70w-pecl-apcu-devel -y
RUN yum install php70w-pecl-igbinary -y
RUN yum install php70w-pecl-igbinary-devel -y
RUN yum install php70w-pecl-imagick -y
RUN yum install php70w-pecl-imagick-devel -y
RUN yum install php70w-pecl-memcached -y
RUN yum install php70w-pecl-mongodb -y
RUN yum install php70w-pecl-redis -y
RUN yum install php70w-pecl-xdebug -y
RUN yum install php70w-pgsql -y
RUN yum install php70w-phpdbg -y
RUN yum install php70w-process -y
RUN yum install php70w-pspell -y
RUN yum install php70w-recode -y
RUN yum install php70w-snmp -y
RUN yum install php70w-soap -y
RUN yum install php70w-tidy -y
RUN yum install php70w-xml -y
RUN yum install php70w-xmlrpc -y

RUN systemctl start php-fpm