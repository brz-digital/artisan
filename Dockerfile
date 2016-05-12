FROM brzdigital/ubuntu

MAINTAINER "Joao Paulo Barbosa" <jpaulobneto@gmail.com>

WORKDIR /tmp

RUN apt-get update -y
RUN apt-get install -y \
    php7.0-cli \
    php7.0-mcrypt \
    php7.0-mongo \
    php7.0-mysqlnd \
    php7.0-pgsql \
    php7.0-redis \
    php7.0-sqlite \
    php7.0-gd \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/var/www"]
WORKDIR /var/www

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]
