FROM gregorwebmaster/ngino_onezym

# install system library
RUN apk update
RUN apk add autoconf alpine-sdk

# configure xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/

# clear installation
RUN rm -rf /var/cache/apk/*

# set workdir
RUN mkdir /workspace
WORKDIR /workspace