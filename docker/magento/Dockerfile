FROM php:7.4

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN install-php-extensions \
    bcmath \
    ctype \
    curl \
    dom \
    hash \
    iconv \
    intl \
    mbstring \
    openssl \
    pdo_mysql \
    simplexml \
    soap \
    xsl \
    zip \
    sockets \
    gd \
    opcache

# FROM php:7.4-fpm-alpine

# RUN apk -U --no-cache add \
#     php7-bcmath \
#     php7-ctype \
#     php7-curl \
#     php7-dom \
#     # php7-hash \
#     php7-iconv \
#     php7-intl \
#     php7-mbstring \
#     php7-openssl \
#     php7-pdo_mysql \
#     php7-simplexml \
#     php7-soap \
#     php7-xsl \
#     php7-zip \
#     php7-sockets \
#     php7-gd \
#     php7-opcache

# FROM php:7.4

# # Install dependencies
# # RUN apk update && apk add --no-cache --virtual \
# RUN apt-get update && apt-get install -y \
#     libfreetype6-dev \
#     libjpeg62-turbo-dev \
#     libpng-dev \
#     libcurl4-openssl-dev \
#     libicu-dev \ 
#     libmcrypt-dev \ 
#     libxslt1-dev \ 
#     libzip-dev \ 
#     libonig-dev \
#     sendmail-bin \ 
#     sendmail \ 
#     sudo 

# # GD
# RUN docker-php-ext-configure gd --with-freetype --with-jpeg
#     # && docker-php-ext-install -j$(nproc) gd

# # opcache 
# RUN docker-php-ext-configure opcache --enable-opcache
#     # && docker-php-ext-install -j$(nproc) opcache

# # Install required PHP extensions
# RUN docker-php-ext-install \
#     bcmath \
#     ctype \
#     curl \
#     dom \
#     # hash \
#     iconv \
#     intl \
#     mbstring \
#     openssl \
#     pdo_mysql \
#     simplexml \
#     soap \
#     xsl \
#     zip \
#     sockets \
#     gd \
#     opcache

# FROM magento/magento-cloud-docker-php:7.4-fpm-1.2

WORKDIR /app
RUN curl -SL https://github.com/magento/magento2/archive/2.4.0.tar.gz | tar -zxC /app

COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR magento2-2.4.0
RUN composer install

COPY install.sh .
RUN chmod u+x ./install.sh
# RUN ./install.sh

VOLUME [ "/app" ]

# COPY auth.json /root/.composer/auth.json
# RUN composer global require hirak/prestissimo
# RUN composer create-project --repository=https://repo.magento.com/ magento/project-community-edition=2.4.0 /app
