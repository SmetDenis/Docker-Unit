FROM php:7.0-cli
MAINTAINER Denis Smetannikov <admin@jbzoo.com>

RUN apt-get update
RUN apt-get install -y git unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN composer require phpunit/phpunit    \
    --no-ansi                           \
    --no-interaction

RUN php -v
RUN ./vendor/bin/phpunit --version

CMD ["./vendor/bin/phpunit"]
