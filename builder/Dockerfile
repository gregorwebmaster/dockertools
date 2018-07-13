FROM alpine:3.8

RUN apk update
RUN apk upgrade
RUN apk add automake autoconf alpine-sdk build-base nasm libtool libpng-dev nodejs npm
RUN npm i npm@latest -g

RUN apk add php7 php7-common php7-opcache php7-openssl php7-session php7-sockets php7-xdebug php7-curl php7-json php7-dom php7-xml php7-xmlwriter php7-simplexml php7-pdo php7-pdo_mysql php7-pdo_sqlite php7-pear php7-phar php7-gd php7-iconv php7-zlib php7-mbstring php7-tokenizer php7-mcrypt php7-ctype php7-openssl php7-redis php7-zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN php -r "unlink('composer-setup.php');"

RUN mkdir /workspace
WORKDIR /workspace

EXPOSE 35729

CMD npm install && npm run watch