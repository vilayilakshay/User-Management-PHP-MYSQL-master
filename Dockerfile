FROM pensiero/apache-php:php5.6

# Mysql packages
RUN apt update -q && apt install -yqq --force-yes \
    php5.6-mysql

COPY . /var/www/html

# Start apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]