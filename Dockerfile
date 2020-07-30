FROM php:7.4-apache
RUN apt-get update -yqq

COPY . /var/www/html
