FROM php:7.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html/

# Copy apache config
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Set permissions for cache and logs
RUN chown -R www-data:www-data /var/www/html/application/cache
RUN chown -R www-data:www-data /var/www/html/application/logs
