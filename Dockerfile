FROM xampp
RUN apt-get update -yqq \
&& apt-get install -y \


COPY . /var/www/html
