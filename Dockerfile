FROM php:5.6.40-cli-alpine

RUN apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug \
    && apk del .phpize-deps

RUN apk add --no-cache --update git openssh libpng libpng-dev libzip-dev zip

RUN docker-php-ext-install pdo_mysql sockets bcmath gd zip \
    && docker-php-ext-enable pdo_mysql sockets bcmath gd zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && chmod +x composer.phar && mv composer.phar /usr/bin/composer

RUN mkdir /app
WORKDIR /app