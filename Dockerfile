FROM wordpress:5.1.0-php7.1-apache

RUN docker-php-source extract && \
    pecl install redis && \
    docker-php-ext-enable redis && \
    docker-php-source delete
