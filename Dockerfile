FROM php:7


RUN apt-get update \
	&& apt-get install -y curl libpng-dev libmcrypt-dev  \
	&& docker-php-ext-install gd mcrypt mbstring pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
COPY . /var/www

RUN composer dump-autoload -o
EXPOSE 8000

CMD ["php", "-S", "127.0.0.1:8000", "-t", "/var/www/public"]
