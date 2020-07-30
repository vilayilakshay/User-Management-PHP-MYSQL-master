FROM php:7.2-fpm
RUN apt-get update -yqq 
&& apt-get install -y \
apache 

COPY . /var/www/html
