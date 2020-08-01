FROM toasterlint/php-apache-mysql

RUN apt-get install mysql

COPY . /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
RUN echo "extension=php_pdo_mysql.dll" >> /usr/local/etc/php/php.ini-development
RUN echo "extension=php_pdo_mysql.dll" >> /usr/local/etc/php/php.ini-production