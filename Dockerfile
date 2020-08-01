FROM php:7.4-apache
RUN apt-get y install mysql
COPY . /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN docker-php-ext-install pdo pdo_mysql
EXPOSE 80


