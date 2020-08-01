FROM php:7.4-apache
COPY . /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 80


