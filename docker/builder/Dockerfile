FROM php:7.2-cli-alpine3.8

# install system library
RUN apk update
RUN apk add --no-cache automake autoconf alpine-sdk build-base nasm libtool libpng-dev

# instal node & co.
RUN apk add nodejs npm
RUN npm i npm@latest -g

# instal composer
RUN apk add composer

# clear installation
RUN apk cache clean

# set workdir
RUN mkdir /workspace
WORKDIR /workspace