FROM wordpress:5.1-php7.3-fpm-alpine

# install system library
RUN apk update
RUN apk add --no-cache autoconf alpine-sdk

# configure xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/

# clear installation
RUN apk del autoconf alpine-sdk