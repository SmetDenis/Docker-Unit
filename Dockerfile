FROM php:7.0-cli
MAINTAINER Denis Smetannikov <admin@jbzoo.com>

RUN apt-get update
RUN apt-get install -y git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN composer global require phpunit/phpunit
RUN phpunit --version
