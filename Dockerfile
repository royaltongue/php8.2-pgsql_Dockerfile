FROM php:8.2-fpm
RUN docker-php-ext-install mysqli pdo pdo_mysql pdo_pgsql
RUN docker-php-ext-enable mysqli
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
