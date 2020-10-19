FROM php:7.4

# Install dependencies
# RUN apk update && apk add --no-cache --virtual \
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libcurl4-openssl-dev \
    libicu-dev \ 
    libmcrypt-dev \ 
    libxslt1-dev \ 
    libzip-dev \ 
    libonig-dev \
    sendmail-bin \ 
    sendmail \ 
    sudo 

# GD
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
    # && docker-php-ext-install -j$(nproc) gd

# opcache 
RUN docker-php-ext-configure opcache --enable-opcache
    # && docker-php-ext-install -j$(nproc) opcache

# Install required PHP extensions
RUN docker-php-ext-install \
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

COPY --from=composer /usr/bin/composer /usr/bin/composer
# COPY auth.json /root/.composer/auth.json
# RUN composer create-project --repository=https://repo.magento.com/ magento/project-community-edition /app

WORKDIR /app
RUN curl -SL https://github.com/magento/magento2/archive/2.4.0.tar.gz \
    | tar -zxC /app

COPY install.sh .
RUN chmod u+x install.sh
RUN ./install.sh
# ENTRYPOINT ["/bin/bash", "-c", "./install.sh"]
