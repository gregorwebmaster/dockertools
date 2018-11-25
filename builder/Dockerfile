FROM php:7.2-cli-alpine3.8

# install system library
RUN apk update
RUN apk add automake autoconf alpine-sdk build-base nasm libtool libpng-dev

# instal node & co.
RUN apk add nodejs npm
RUN npm i npm@latest -g

# instal composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

# install jasmine
RUN npm install -g jasmine

# install php Unit v6
RUN wget https://phar.phpunit.de/phpunit-6.5.9.phar
RUN chmod +x phpunit-6.5.9.phar
RUN mv phpunit-6.5.9.phar /usr/local/bin/phpunit6

# install php Unit v7
RUN wget https://phar.phpunit.de/phpunit-7.4.4.phar
RUN chmod +x phpunit-7.4.4.phar
RUN mv phpunit-7.4.4.phar /usr/local/bin/phpunit

# clear installation
RUN rm -rf /var/cache/apk/*

# set workdir
RUN mkdir /workspace
WORKDIR /workspace