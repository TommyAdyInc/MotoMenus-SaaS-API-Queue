FROM php:7.3.9-alpine3.10

RUN apk add --no-cache \
    mysql-client \
    zlib-dev

RUN docker-php-ext-install \
    bcmath \
    exif \
    ctype \
    mbstring \
    opcache \
    pdo_mysql \
    zip

# If needed, add a custom php.ini configuration.
COPY ./usr/local/etc/php/php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html
