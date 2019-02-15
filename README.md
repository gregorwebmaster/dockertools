# DockerTools
Simple in use Docker images for webdevelopment based on alpine linux

# Containers

## 1. Builder

### What is builder container?
We are using webpack and php composer to help you deploy a modern web application. Exemplar App you can found in [project repository](https://gitlab.com/docker-master/dockertools)

### Installed Packages
* Node.js
* NPM
* PHP 7.2
* PHP Composer

### Start a build server
> docker run -v "$PWD":/workspace gregorwebmaster/dockertools:builder

#### using docker-compose
```
version: '3.2'

services:

  builder:
    image: gregorwebmaster/dockertools:builder
    volumes:
      - "$PWD":/workspace
```

### Run phpunit
docker run -v $PWD:/workspace --rm /workspace/app/src/vendor/bin/phpunit

## 2. Debuger
PHP-FPM server with preinstaled Xdebuger.

### Ports
  * 9000 - PHP-FPM
  * 9005 - Xdebug
  
### docker-compose configuration
```
version: '3'
services:
  web:
    container_name: web-serv
    image: nginx:1.15-alpine
    volumes: 
      - "$PWD":/var/www
    links:
      - php7
    
  php7:
    image: gregorwebmaster/dockertools:xdebug
    volumes: 
      - "$PWD":/var/www
    environment:
      XDEBUG_CONFIG: idekey=VSCODE
```