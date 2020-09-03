FROM php:7.4-fpm

# RUN apt-get update && apt-get install -y \
#     libxml2-dev \
#     zlib1g-dev

# Install dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libfreetype6-dev \ 
    libicu-dev \ 
    libjpeg62-turbo-dev \ 
    libmcrypt-dev \ 
    libpng-dev \ 
    libxslt1-dev \ 
    sendmail-bin \ 
    sendmail \ 
    sudo \ 
    libzip-dev \ 
    libonig-dev

# Configure the gd library
RUN docker-php-ext-configure \
    gd --with-freetype --with-jpeg

# Install required PHP extensions
RUN docker-php-ext-install \
    bcmath \
    curl \
    dom \
    gd \
    # hash \
    iconv \
    intl \
    mbstring \
    # openssl \
    pdo_mysql \
    simplexml \
    soap \
    xsl \
    zip
