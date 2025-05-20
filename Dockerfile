FROM php:7.2-apache
RUN apt update && \
    apt install -y libpng-dev && \
    docker-php-ext-install gd && \
    service apache2 restart
COPY src /var/www/html/