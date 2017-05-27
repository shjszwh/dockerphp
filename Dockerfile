FROM hub.c.163.com/library/centos:centos7.3.1611

MAINTAINER Wang hao "hao.wang@hotelgg.com"

RUN yum install wget -y
RUN wget https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install  webtatic-release.rpm -y

RUN yum install php70w \
                php70w-bcmath \
                php70w-cli \
                php70w-common \
                php70w-dba \
                php70w-devel \
                php70w-embedded \
                php70w-enchant \
                php70w-fpm \
                php70w-gd \
                php70w-imap \
                php70w-interbase \
                php70w-intl \
                php70w-ldap \
                php70w-mbstring \
                php70w-mcrypt \
                php70w-mysql \
                php70w-mysqlnd \
                php70w-odbc \
                php70w-opcache \
                php70w-pdo \
                php70w-pdo_dblib \
                php70w-pecl-apcu \
                php70w-pecl-apcu-devel \
                php70w-pecl-igbinary \
                php70w-pecl-igbinary-devel \
                php70w-pecl-imagick \
                php70w-pecl-imagick-devel \
                php70w-pecl-memcached \
                php70w-pecl-mongodb \
                php70w-pecl-redis \
                php70w-pecl-xdebug \
                php70w-pgsql \
                php70w-phpdbg \
                php70w-process \
                php70w-pspell \
                php70w-recode \
                php70w-snmp \
                php70w-soap \
                php70w-tidy \
                php70w-xml \
                php70w-xmlrpc -y

RUN systemctl start php-fpm