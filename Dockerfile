FROM php:7.1.7-fpm

MAINTAINER Wang hao "hao.wang@hotelgg.com"

COPY sources/sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
            vim \
            git \
            sudo \
            unzip \
            dnsutils \
            supervisor \
            openssh-client \
            build-essential \
            libpq-dev \
            python-dev \
            libmcrypt-dev \
            libpng12-dev \
            libfreetype6-dev \
            libjpeg62-turbo-dev \

    && pecl channel-update pecl.php.net \
    && pecl install redis-3.1.2 \
    && pecl install xdebug-2.5.5 \

    && docker-php-ext-install -j$(nproc) \
        pdo_mysql \
        pdo_pgsql \
        mcrypt \
        bcmath \
        zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-enable redis xdebug