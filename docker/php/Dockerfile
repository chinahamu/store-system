FROM php:8.1.11-fpm
COPY php.ini /usr/local/etc/php/

RUN apt-get update \
  && apt-get install -y zlib1g-dev mariadb-client vim libzip-dev curl \
  && docker-php-ext-install zip pdo_mysql

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.39.3/install.sh | bash

# Set nvm environment variables
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 18.14.0

# Install Node.js and set it as the default version
RUN . $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && nvm use default

#Composer install
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin:$NVM_DIR/versions/node/v$NODE_VERSION/bin

WORKDIR /var/www/

RUN composer global require "laravel/installer"
